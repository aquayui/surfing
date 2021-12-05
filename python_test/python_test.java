package python_test;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;

public class python_test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String FileNameWithPath = "D:\\Users\\12151\\PycharmProjects\\pa_test\\test.py";
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
