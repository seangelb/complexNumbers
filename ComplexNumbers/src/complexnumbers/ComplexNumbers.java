/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package complexnumbers;

/**
 *
 * @author seangelb
 */
public class ComplexNumbers {

    private float r, j;

    ComplexNumbers(float r, float j) {
        this.r = r;
        this.j = j;
    }

    float getReal() {
        return r;
    }

    float getImaginary() {
        return j;
    }

    String getPolarCoordinates() {
        return "(" + getReal() + ", " + getImaginary() + ")";
    }

    String getConjugatePolar() {
        return "(" + getReal() + ", " + -getImaginary() + ")";
    }

    ComplexNumbers getConjugate() {
        return new ComplexNumbers(r, -j);
    }

    ComplexNumbers add(ComplexNumbers other) {
        return new ComplexNumbers(r + other.getReal(), j + other.getImaginary());
    }

    ComplexNumbers subtract(ComplexNumbers other) {
        return new ComplexNumbers(r - other.getReal(), j - other.getImaginary());
    }

    ComplexNumbers multiply(ComplexNumbers other) {
        float a = r;
        float b = j;
        float c = other.r;
        float d = other.j;

        return new ComplexNumbers(((a * c) - (d * b)), ((a * d) + (b * c)));
    }

    ComplexNumbers divide(ComplexNumbers other) {
        float a = r;
        float b = j;
        float c = other.r;
        float d = other.j;

        return new ComplexNumbers(((a * c) + (d * b)) / ((c * c) + (d * d)), ((b * c) - (a * d)) / ((c * c) + (d * d)));
    }

    public static void main(String[] args) {
        ComplexNumbers nums = new ComplexNumbers(1, -1);
        ComplexNumbers nums2 = new ComplexNumbers(2, 1);

        System.out.println(nums.divide(nums2).getPolarCoordinates());
        System.out.println(nums.getConjugate().getImaginary());
    }

}
