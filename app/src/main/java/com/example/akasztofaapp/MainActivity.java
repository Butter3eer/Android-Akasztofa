package com.example.akasztofaapp;

import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;
import androidx.constraintlayout.helper.widget.Flow;
import androidx.constraintlayout.widget.ConstraintLayout;

import android.graphics.Color;
import android.os.Bundle;
import android.util.Log;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import com.google.android.material.button.MaterialButton;

public class MainActivity extends AppCompatActivity {
    ImageView imageExecutionPlace, imageHelp;
    TextView megfejtesAllapot, textHelp;
    ConstraintLayout layoutLetters;
    Flow flowLetters;
    String targetLanguage;
    
    char[] chosenLetters;

    char[] letters_en = "ABCDEFGHIJKLMNOPQRSTUVWXYZ".toCharArray();
    char[] ruchars = {'\u0410', '\u0411', '\u0412', '\u0413', '\u0414', '\u0415', '\u0401', '\u0416', '\u0417', '\u0418', '\u0419', '\u041A', '\u041B', '\u041C', '\u041D', '\u041E', '\u041F', '\u0420', '\u0421', '\u0422', '\u0423', '\u0424', '\u0425', '\u0426', '\u0427', '\u0428', '\u0429', '\u042A', '\u042B', '\u042C', '\u042D', '\u042E', '\u042F'};
    char[] alphabet_ru = (new String(ruchars)).toCharArray();
    char[] alphabet_en = "abcdefghijklmnopqrstuvwxyz".toUpperCase().toCharArray();
    char[] alphabet_hu = "aábcdeéfghiíjklmnoóöőpqrstuúüűvwxyz".toUpperCase().toCharArray();

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        init();
        addLetterButtons(letters_en);
    }
    private void init() {
        imageExecutionPlace = findViewById(R.id.imageExecutionPlace);
        megfejtesAllapot = findViewById(R.id.megfejtesAllapot);
        imageHelp = findViewById(R.id.imageHelp);
        textHelp = findViewById(R.id.textHelp);
        layoutLetters = findViewById(R.id.layoutLetters);
        flowLetters = findViewById(R.id.flowLetters);
    }

    /**
     * A választott nyelv ABC-nek megfelelő parancsgombokat a felületre helyezi.
     * @param letters
     */
    private void addLetterButtons(char[] letters){

        int[] referenceIds = new int[letters.length];
        for (int i = 0; i < letters.length; i++) {
            MaterialButton myButton = new MaterialButton(this);
            myButton.setText(String.valueOf(letters[i]));
            myButton.setId(View.generateViewId());
            myButton.setBackgroundColor(Color.parseColor("#336600"));
            myButton.setCornerRadius(35);

            final int id = myButton.getId();
            referenceIds[i] = id;
            myButton.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    // TODO: 18/05/2023 Leellenőrizzük, szerepel... 
                    //Toast.makeText(MainActivity.this, "Kattintott a " + String.valueOf(letters[id - 1]) + " feliratú gombra.", Toast.LENGTH_SHORT).show();
                }
            });
            layoutLetters.addView(myButton);
        }
        flowLetters.setReferencedIds(referenceIds);
    }

    public void DeleteButtons() {
        for (int i = 0; i < layoutLetters.getChildCount(); i++) {
            View view = layoutLetters.getChildAt(i);
            Log.i("View", "DeleteButtons: " + view.getClass());
            if (view instanceof MaterialButton) {
                Log.i("Button", "DeleteButtons: " + i);
                layoutLetters.removeView(view);
            }
        }
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        MenuInflater inflater=getMenuInflater();
        inflater.inflate(R.menu.mainemenu, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(@NonNull MenuItem item) {

        switch (item.getItemId()){
            case R.id.menuItemHard:
                Toast.makeText(this, "Nehéz szintet válsztott", Toast.LENGTH_SHORT).show();
                return true;
            case R.id.menuItemEasy:
                Toast.makeText(this, "Könnyű szintet válsztott", Toast.LENGTH_SHORT).show();
                return true;
            case R.id.menuItemBiology:
                Toast.makeText(this, "Biolőgia kategóriát választott", Toast.LENGTH_SHORT).show();
                return true;
            case R.id.menuItemMathematics:
                Toast.makeText(this, "Matematika kategóriát válsztott", Toast.LENGTH_SHORT).show();
                return true;
            case R.id.menuItemBuildings:
                Toast.makeText(this, "Épületeket válsztott", Toast.LENGTH_SHORT).show();
                return true;
            case R.id.menuItemIt:
                Toast.makeText(this, "Informatikát válsztott", Toast.LENGTH_SHORT).show();
                return true;
            case R.id.setOrosz:
                chosenLetters = alphabet_ru;
                targetLanguage = "ru";
                DeleteButtons();
                addLetterButtons(chosenLetters);
                Toast.makeText(this, "Orosz nyelvet választott", Toast.LENGTH_SHORT).show();
                return true;
            case R.id.setEnglish:
                chosenLetters = alphabet_en;
                targetLanguage = "en";
                DeleteButtons();
                addLetterButtons(chosenLetters);
                Toast.makeText(this, "Angol nyelvet választott", Toast.LENGTH_SHORT).show();
                return true;
            case R.id.menuExit:
                Toast.makeText(this, "Kilépés a programból", Toast.LENGTH_SHORT).show();
                this.finishAffinity();
                return true;
        }
        return super.onOptionsItemSelected(item);
    }
}