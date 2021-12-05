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
