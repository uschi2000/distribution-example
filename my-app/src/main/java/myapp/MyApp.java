package myapp;

import com.google.common.base.Preconditions;

import java.util.Arrays;

public class MyApp {
    public static void main(String[] args) {
        Preconditions.checkArgument(args.length == 0, "Expected zero arguments, found: " + Arrays.toString(args));
        System.out.println("My App");
    }
}
