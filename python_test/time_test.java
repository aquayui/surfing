package python_test;

import java.util.Date;
import java.util.Timer;
import java.util.TimerTask;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Calendar;
import java.util.Date;
import java.util.Timer;

public class time_test {

	public static void main(String[] args) {
		new time_test();
	}

	// ʱ����(һ��)
	private static final long PERIOD_DAY = 24 * 60 * 60 * 1000;

	public time_test() {
		Calendar calendar = Calendar.getInstance();
		calendar.set(Calendar.HOUR_OF_DAY, 21); // ʱ��
		calendar.set(Calendar.MINUTE, 0);
		calendar.set(Calendar.SECOND, 0);
		Date date = calendar.getTime(); // ��һ��ִ�ж�ʱ�����ʱ��
		// �����һ��ִ�ж�ʱ�����ʱ�� С�ڵ�ǰ��ʱ��
		// ��ʱҪ�� ��һ��ִ�ж�ʱ�����ʱ���һ�죬�Ա���������¸�ʱ���ִ�С��������һ�죬���������ִ�С�
		if (date.before(new Date())) {
			date = this.addDay(date, 1);
		}
		Timer timer = new Timer();
		python_test task = new python_test();
		// ����ָ����������ָ����ʱ�俪ʼ�����ظ��Ĺ̶��ӳ�ִ�С�
		timer.schedule(task, date, PERIOD_DAY);
	}

	// ���ӻ��������
	public Date addDay(Date date, int num) {
		Calendar startDT = Calendar.getInstance();
		startDT.setTime(date);
		startDT.add(Calendar.DAY_OF_MONTH, num);
		return startDT.getTime();
	}

	public class python_test extends TimerTask {
		public void run() {
			String FileNameWithPath = "D:\\Users\\12151\\PycharmProjects\\pa_test\\thread_test.py";
			File tempFile = new File(FileNameWithPath);
			// ִ�е�python����������ܹ��ڼ��������������ִ��
			String commend = "python " + FileNameWithPath;
			// ע��Ҫ���ļ�·����ȫ����Ȼpython�ļ����в���
			try {
				Process proc = Runtime.getRuntime().exec(commend);

				// ��������£�����Ľ��
				InputStream inputStream = proc.getInputStream();
				// �쳣����£����������Ϣ
				InputStream errorStream = proc.getErrorStream();

				try {
					// �ȴ�Java���ü����ȥִ�нű��ļ�
					proc.waitFor();
				} catch (InterruptedException e) {
					e.printStackTrace();
				}

				// ��ý��
				ByteArrayOutputStream byteArrayOutputInputStream = new ByteArrayOutputStream();
				ByteArrayOutputStream byteArrayOutputErrorStream = new ByteArrayOutputStream();
				byte[] buff = new byte[1024];
				int len = -1;
				while ((len = inputStream.read(buff)) != -1) {
					byteArrayOutputInputStream.write(buff, 0, len);
				}
				while ((len = errorStream.read(buff)) != -1) {
					byteArrayOutputErrorStream.write(buff, 0, len);
				}
				byte[] inputStreamBytes = byteArrayOutputInputStream.toByteArray();
				byte[] errorStreamBytes = byteArrayOutputErrorStream.toByteArray();

				// չʾ���
				String res = new String(inputStreamBytes) + new String(errorStreamBytes);
				System.out.println(res);

			} catch (IOException e) {
				System.out.println("jb");
				e.printStackTrace();
			}
		}
	}
}
