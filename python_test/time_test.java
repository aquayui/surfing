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

	// 时间间隔(一天)
	private static final long PERIOD_DAY = 24 * 60 * 60 * 1000;

	public time_test() {
		Calendar calendar = Calendar.getInstance();
		calendar.set(Calendar.HOUR_OF_DAY, 21); // 时间
		calendar.set(Calendar.MINUTE, 0);
		calendar.set(Calendar.SECOND, 0);
		Date date = calendar.getTime(); // 第一次执行定时任务的时间
		// 如果第一次执行定时任务的时间 小于当前的时间
		// 此时要在 第一次执行定时任务的时间加一天，以便此任务在下个时间点执行。如果不加一天，任务会立即执行。
		if (date.before(new Date())) {
			date = this.addDay(date, 1);
		}
		Timer timer = new Timer();
		python_test task = new python_test();
		// 安排指定的任务在指定的时间开始进行重复的固定延迟执行。
		timer.schedule(task, date, PERIOD_DAY);
	}

	// 增加或减少天数
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
			// 执行的python命令，该命令能够在计算机的命令行下执行
			String commend = "python " + FileNameWithPath;
			// 注意要将文件路径补全，不然python文件运行不了
			try {
				Process proc = Runtime.getRuntime().exec(commend);

				// 正常情况下，输出的结果
				InputStream inputStream = proc.getInputStream();
				// 异常情况下，输出错误信息
				InputStream errorStream = proc.getErrorStream();

				try {
					// 等待Java调用计算机去执行脚本文件
					proc.waitFor();
				} catch (InterruptedException e) {
					e.printStackTrace();
				}

				// 获得结果
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

				// 展示结果
				String res = new String(inputStreamBytes) + new String(errorStreamBytes);
				System.out.println(res);

			} catch (IOException e) {
				System.out.println("jb");
				e.printStackTrace();
			}
		}
	}
}
