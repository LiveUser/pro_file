import 'types.dart';
import 'package:translatable_text_field/translatable_text.dart';
import 'package:flutter/material.dart';
//Get stuff from here https://linktr.ee/radamesvalentin
List<Category> appContent({
  required Language language,
}){
  return [
    Category(
      categoryName: TranslatableText(
        displayLanguage: language,
        textAlign: TextAlign.center,
        options: [
          TranslateOption(language: Languages.english, text: "Social Media"),
          TranslateOption(language: Languages.spanish, text: "Redes Sociales"),
        ],
      ),
      links: [
        Link(
          itemName: TranslatableText(
            displayLanguage: language,
            options: [
              TranslateOption(language: Languages.english, text: "Raw Ware(Software)"),
              TranslateOption(language: Languages.spanish, text: "Raw Ware(Programas)"),
            ],
          ), 
          link: "https://www.facebook.com/rawwaresoftware",
        ),
        Link(
          itemName: TranslatableText(
            displayLanguage: language,
            options: [
              TranslateOption(language: Languages.english, text: "No tengo idea de como llamar a mi página(photography Facebook page)"),
              TranslateOption(language: Languages.spanish, text: "No tengo idea de como llamar a mi página(Página de Facebook de fotografía)"),
            ],
          ), 
          link: "https://www.facebook.com/profile.php?id=100076538160075",
        ),
        Link(
          itemName: TranslatableText(
            displayLanguage: language,
            options: [
              TranslateOption(language: Languages.english, text: "Facebook photography page"),
              TranslateOption(language: Languages.spanish, text: "Página de Facebook de fotografía"),
            ],
          ), 
          link: "https://www.facebook.com/profile.php?id=100076538160075",
        ),
        Link(
          itemName: TranslatableText(
            displayLanguage: language,
            options: [
              TranslateOption(language: Languages.english, text: "Estupideces bajo microscopio Facebook page"),
              TranslateOption(language: Languages.spanish, text: "Página de Facebook Estupideces bajo microscopio"),
            ],
          ), 
          link: "https://www.facebook.com/Estupideces-bajo-microscopio-100219166010618",
        ),
        Link(
          itemName: TranslatableText(
            displayLanguage: language,
            options: [
              TranslateOption(language: Languages.english, text: "Blender Renders Facebook page"),
              TranslateOption(language: Languages.spanish, text: "Página de Facebook de Blender Renders"),
            ],
          ), 
          link: "https://www.facebook.com/blenderrenderspr",
        ),
      ],
    ),
    Category(
      categoryName: TranslatableText(
        displayLanguage: language,
        textAlign: TextAlign.center,
        options: [
          TranslateOption(language: Languages.english, text: "Android Software"),
          TranslateOption(language: Languages.spanish, text: "Programas para Androide"),
        ],
      ), 
      links: [
        Link(
          itemName: TranslatableText(
            displayLanguage: language,
            options: [
              TranslateOption(language: Languages.english, text: "Android apps"),
              TranslateOption(language: Languages.spanish, text: "Aplicaciones para Androide"),
            ],
          ), 
          link: "https://play.google.com/store/search?q=pub%3Arawware&c=apps",
        ),
      ],
    ),
    Category(
      categoryName: TranslatableText(
        displayLanguage: language,
        textAlign: TextAlign.center,
        options: [
          TranslateOption(language: Languages.english, text: "Linux Software"),
          TranslateOption(language: Languages.spanish, text: "Programas para Linux"),
        ],
      ), 
      links: [
        Link(
          itemName: TranslatableText(
            displayLanguage: language,
            options: [
              TranslateOption(language: Languages.english, text: "Password Locker"),
              TranslateOption(language: Languages.spanish, text: "Password Locker"),
            ],
          ), 
          link: "https://snapcraft.io/passwordlocker",
        ),
        Link(
          itemName: const Text("Image Runner"), 
          link: "https://snapcraft.io/imagerunner",
        ),
      ],
    ),
    Category(
      categoryName: TranslatableText(
        displayLanguage: language,
        textAlign: TextAlign.center,
        options: [
          TranslateOption(language: Languages.english, text: "My Youtube chanels"),
          TranslateOption(language: Languages.spanish, text: "Mis canales de YouTube"),
        ],
      ), 
      links: [
        Link(
          itemName: TranslatableText(
            displayLanguage: language,
            options: [
              TranslateOption(language: Languages.english, text: "Gameplays"),
              TranslateOption(language: Languages.spanish, text: "Videos jugando"),
            ],
          ), 
          link: "https://www.youtube.com/channel/UC7b3PSm46w3RLjONgsrKj5w",
        ),
        Link(
          itemName: TranslatableText(
            displayLanguage: language,
            options: [
              TranslateOption(language: Languages.english, text: "Drone Videos / Travel"),
              TranslateOption(language: Languages.spanish, text: 'Videos de "drone" / Viajes'),
            ],
          ), 
          link: "https://www.youtube.com/channel/UC7NODiyTNnachvp0BtL7ACQ",
        ),
        Link(
          itemName: TranslatableText(
            displayLanguage: language,
            options: [
              TranslateOption(language: Languages.english, text: "My animations"),
              TranslateOption(language: Languages.spanish, text: "Mis animaciones"),
            ],
          ), 
          link: "https://www.youtube.com/channel/UCku6l_xTF_AhVVfnC3K7nLA",
        ),
      ],
    ),
    Category(
      categoryName: TranslatableText(
        displayLanguage: language,
        textAlign: TextAlign.center,
        options: [
          TranslateOption(language: Languages.english, text: "3d Models"),
          TranslateOption(language: Languages.spanish, text: "Modelos 3d"),
        ],
      ), 
      links: [
        Link(
          itemName: TranslatableText(
            displayLanguage: language,
            options: [
              TranslateOption(language: Languages.english, text: "3d Models(Thingyverse)"),
              TranslateOption(language: Languages.spanish, text: "Modelos 3d(Thingyverse)"),
            ],
          ), 
          link: "https://www.thingiverse.com/onlinespawn/designs",
        ),
      ],
    ),
    Category(
      categoryName: TranslatableText(
        displayLanguage: language,
        textAlign: TextAlign.center,
        options: [
          TranslateOption(language: Languages.english, text: "Photography"),
          TranslateOption(language: Languages.spanish, text: "Fotografía"),
        ],
      ), 
      links: [
        Link(
          itemName: TranslatableText(
            displayLanguage: language,
            options: [
              TranslateOption(language: Languages.english, text: "Skypixel Account"),
              TranslateOption(language: Languages.spanish, text: "Cuenta de Skypixel"),
            ],
          ), 
          link: "https://www.skypixel.com/users/djiuser-tlvwovi8hpmw",
        ),
        Link(
          itemName: const Text("500px"), 
          link: "https://500px.com/p/onlinespawn?view=photos",
        )
      ],
    ),
    Category(
      categoryName: TranslatableText(
        displayLanguage: language,
        textAlign: TextAlign.center,
        options: [
          TranslateOption(language: Languages.english, text: "Blogs"),
          TranslateOption(language: Languages.spanish, text: "Vlogs"),
        ],
      ), 
      links: [
        Link(
          itemName: TranslatableText(
            displayLanguage: language,
            options: [
              TranslateOption(language: Languages.english, text: "Make and Hack"),
              TranslateOption(language: Languages.spanish, text: "Make and Hack"),
            ],
          ), 
          link: "https://makeandhack.blogspot.com/",
        ),
      ],
    ),
    Category(
      categoryName: TranslatableText(
        displayLanguage: language,
        textAlign: TextAlign.center,
        options: [
          TranslateOption(language: Languages.english, text: "Art"),
          TranslateOption(language: Languages.spanish, text: "Arte"),
        ],
      ), 
      links: [
        Link(
          itemName: const Text("Blender Renders"), 
          link: "https://valentinradames.wixsite.com/blenderrenders",
        ),
      ],
    ),
    Category(
      categoryName: TranslatableText(
        displayLanguage: language,
        textAlign: TextAlign.center,
        options: [
          TranslateOption(language: Languages.english, text: "Sound"),
          TranslateOption(language: Languages.spanish, text: "Sonido"),
        ],
      ), 
      links: [
        Link(
          itemName: TranslatableText(
            displayLanguage: language,
            options: [
              TranslateOption(language: Languages.english, text: "Free sound"),
              TranslateOption(language: Languages.spanish, text: "Sonidos grátis"),
            ],
          ), 
          link: "https://freesound.org/people/radamesvalentin/",
        ),
      ],
    ),
    Category(
      categoryName: TranslatableText(
        displayLanguage: language,
        textAlign: TextAlign.center,
        options: [
          TranslateOption(language: Languages.english, text: "Developer accounts"),
          TranslateOption(language: Languages.spanish, text: "Cuentas de desarrollador"),
        ],
      ), 
      links: [
        Link(
          itemName: TranslatableText(
            displayLanguage: language,
            options: [
              TranslateOption(language: Languages.english, text: "Stack Overflow"),
              TranslateOption(language: Languages.spanish, text: "Stack Overflow"),
            ],
          ), 
          link: "https://stackoverflow.com/users/7892981/newtopi",
        ),
        Link(
          itemName: TranslatableText(
            displayLanguage: language,
            options: [
              TranslateOption(language: Languages.english, text: "Node Package Manager"),
              TranslateOption(language: Languages.spanish, text: "Node Package Manager"),
            ],
          ), 
          link: "https://www.npmjs.com/settings/onlinespawn/packages",
        ),
        Link(
          itemName: TranslatableText(
            displayLanguage: language,
            options: [
              TranslateOption(language: Languages.english, text: "Github profile"),
              TranslateOption(language: Languages.spanish, text: "Perfil de Github"),
            ],
          ), 
          link: "https://github.com/liveuser",
        ),
      ],
    ),
    Category(
      categoryName: TranslatableText(
        displayLanguage: language, 
        options: [
          TranslateOption(language: Languages.english, text: "Flutter/dart packages/libraries"),
          TranslateOption(language: Languages.spanish, text: "Paquetes/librerías de Flutter/dart"),
        ],
      ), 
      links: [
        Link(
          itemName: const Text("array_playground"), 
          link: "https://pub.dev/packages/array_playground",
        ),
        Link(
          itemName: const Text("async_foreach"), 
          link: "https://pub.dev/packages/async_foreach",
        ),
        Link(
          itemName: const Text("broken_functionality"), 
          link: "https://pub.dev/packages/broken_functionality",
        ),
        Link(
          itemName: const Text("caesar_salad"), 
          link: "https://pub.dev/packages/caesar_salad",
        ),
        Link(
          itemName: const Text("dating"), 
          link: "https://pub.dev/packages/dating",
        ),
        Link(
          itemName: const Text("dbx_platform"), 
          link: "https://pub.dev/packages/dbx_platform",
        ),
        Link(
          itemName: const Text("einfache_krypto"), 
          link: "https://pub.dev/packages/einfache_krypto",
        ),
        Link(
          itemName: const Text("hex_alpha"), 
          link: "https://pub.dev/packages/hex_alpha",
        ),
        Link(
          itemName: const Text("humaniza"), 
          link: "https://pub.dev/packages/humaniza",
        ),
        Link(
          itemName: const Text("lost"), 
          link: "https://pub.dev/packages/lost",
        ),
        Link(
          itemName: const Text("mailjet"), 
          link: "https://pub.dev/packages/mailjet",
        ),
        Link(
          itemName: const Text("mimalo"), 
          link: "https://pub.dev/packages/mimalo",
        ),
        Link(
          itemName: const Text("normalizer"), 
          link: "https://pub.dev/packages/normalizer",
        ),
        Link(
          itemName: const Text("number_system"), 
          link: "https://pub.dev/packages/number_system",
        ),
        Link(
          itemName: const Text("optimus_prime"), 
          link: "https://pub.dev/packages/optimus_prime",
        ),
        Link(
          itemName: const Text("power_plant"), 
          link: "https://pub.dev/packages/power_plant",
        ),
        Link(
          itemName: const Text("pr_geo"), 
          link: "https://pub.dev/packages/pr_geo",
        ),
        Link(
          itemName: const Text("query_parser"), 
          link: "https://pub.dev/packages/query_parser",
        ),
        Link(
          itemName: const Text("quick_share"), 
          link: "https://pub.dev/packages/quick_share",
        ),
        Link(
          itemName: const Text("quickie"), 
          link: "https://pub.dev/packages/quickie",
        ),
        Link(
          itemName: const Text("raw_context"), 
          link: "https://pub.dev/packages/raw_context",
        ),
        Link(
          itemName: const Text("raw_scanner"), 
          link: "https://pub.dev/packages/raw_scanner",
        ),
        Link(
          itemName: const Text("raw_settings"), 
          link: "https://pub.dev/packages/raw_settings",
        ),
        Link(
          itemName: const Text("sexy_api_client"), 
          link: "https://pub.dev/packages/sexy_api_client",
        ),
        Link(
          itemName: const Text("sortero"), 
          link: "https://pub.dev/packages/sortero",
        ),
        Link(
          itemName: const Text("translatable_text_field"), 
          link: "https://pub.dev/packages/translatable_text_field",
        ),
        Link(
          itemName: const Text("zipper"), 
          link: "https://pub.dev/packages/zipper",
        ),
      ],
    ),
  ];
}