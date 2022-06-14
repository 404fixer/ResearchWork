$title Diet Model

$onText
This model determines a least cost diet which meets the daily
allowances of nutrients for a moderately active man weighing 60 kilograms.

$offText

Set
   n 'nutrients' / calorie    'thousands',  protein   'grams',        calcium    'miligrams'
                   iron       'miligrams',  vitamin-a 'mcg',          sugar      'grams'
                   fiber      'grams',      fat       'grams'  ,      carbs      'grams' /

   f 'foods'     / wheat       , rice         , kala-chana     , arhar-dal      , kabuli-chana      , sabut-moong
                   urad-dal    , malka-masoor , dates          , peas           , sweet-corn        , milk
                   toned-milk  , lassi        , curd           , bread          , brown-bread       , cheese
                   butter      , potato       , onion          , ginger         , colocasia         , red-potato
                   beetroot    , garlic       , lettuce        , brinjal        , snake-gourd       , bitter-gourd
                   green-beans , ridge-gourd  , zucchini       , white-onion    , tomato            , coriander
                   lemon       , lady-finger  , spinach        , capsicum       , mushroom          , carrot
                   pumpkin     , amla         , round-gourd    , mango          , watermelon                        /;

Parameter b(n) 'required daily allowances of nutrients'
               / calorie  2730,  protein    60, calcium   600.0
                 iron       17,  vitamin-a 900, sugar      37.5
                 fiber      34,  fat        97, carbs     319.0   /;

Table a(f,n) 'nutritive value of foods (per rupee spent)'
                calorie  protein  calcium     iron  vitamin-a       sugar       fiber     fat      carbs
*                (1000)      (g)     (mg)     (mg)      (mcg)         (g)         (g)     (g)        (g)
   wheat          88.22     2.62     0.00     0.00       0.00        1.20        2.40    0.40       18.5
   rice           38.33     0.72     0        0          0           0.82        0       0.05       8.66
   kala-chana     43.04     0        2.35     0.6        1.34        0           0       0.24       7.43
   arhar-dal      25.28     1.48     0        0          0           0.02        0.79    0.07       4.57
   kabuli-chana   13.59     0.7      0        0          0           0           0       0.21       2.21
   sabut-moong    14.83     0.99     0        0          0           0           0       0.05       2.6
   urad-dal       17.85     1.02     1.12     4.23       0           0           0       0.003      3.37
   malka-masoor   17.43     1.14     0        0          0           0           0       0.1        3
   dates           8.43     0.05     1.27     0.09       0.44        0           0.05    0.02       1.88
   peas            3.44     0.27     0        0          0           0           0       0.004      0.59
   sweet-corn      5.19     0.19     0        0          0           0           0       0          1.11
   milk           10.71     0.43    20.0      0         10.71        0           0       0.64       0.69
   toned-milk      8.56     0.44    20.59     0          0           0           0       0.44       0.71
   lassi           9.88     0.29     9.25     0          0           1.5         0       0.26       1.6
   curd            8.27     0.49    22.39     0          0           0           0       0.39       0.67
   bread          28.33     0.85    11.68     0.36       0           0.43        0.34    0.08       6.08
   brown-bread    22.57     0.67     9.52     0.57       0           0           0.51    0.1        4.76
   cheese          6.84     0.44     0        0          0           0.03        0       0.55       0.03
   butter         14.91     0.01     0        0         13.43        0           0       1.65       0
   potato         27.5      0.71     0        0          0           2.85        0.79    0.04       6.07
   onion          19.04     0.52     0        0          0           2           0.81    0.05       4.29
   ginger          0.8      0.18     0        0          0           0.17        0.2     0.08       1.8
   colocasia      13.47     0.42     5.56     0          0           0           0.14    0          2.92
   red-potato     25.59     0.56     0        0          0           0.26        0.53    0.03       5.91
   beetroot        6.71     0.25     0        0          0           1.07        0.44    0.03       1.5
   garlic          0.11     0.004    0        0          0           0           0.002   0          0.02
   lettuce         0.002    0.0001   0        0          0           0.0002      0.0001  0          0.0005
   brinjal         6.95     0.28     0        0          0           0.97        0.83    0.06       1.67
   snake-gourd    15.39     0.36     0        0          0           0           0.11    0.69       2.23
   bitter-gourd   10.625    1.125    0        0          0           0.31        0.59    0.06       2.19
   green-beans     2.5      0.15     0        0          0           0           0.27    0.008      0.56
   ridge-gourd     9.89     0.12     0        0          0           0.89        0.51    0.05       2.47
   zucchini        1.03     0.07     0        0          0           0.15        0.06    0.01       0.19
   white-onion     4.11     0.13     0        0          0           0.44        0.13    0.02       0.95
   tomato          2.81     0.14     0        0          0           0.41        0.19    0.03       0.61
   coriander       1.91     0.18     0        0          0           0           0       0.04       0.31
   lemon           1.87     0.07     0        0          0           0.16        0.18    0.01       0.58
   lady-finger     10.31    0.59     0        0          0           0.47        1       0.06       2.18 
   spinach         11.49    1.41    48.78  1330.49     231.6         0.2         1.1     0.2        1.8
   capsicum         5       0.23     0        0          0           0.6         0.43    0.05       1.15
   mushroom         0.81    0.12     0.11     0.02       0           0.07        0       0          0.12
   carrot           8.19    0        6.59     0        166.89        0.95        0.56    0          1.9
   pumpkin        112.35    5.21     0        0          0           0           0       9.67       3.72
   amla             3.43    0.07     1.95     0.02       6.79        0           0      13.14     230.64
   round-gourd     12.67    0.29     0        0          0           0           0.09    0.57       1.79
   mango           10.8     0.1      0        0          0           2.42        0.3     0.07       2.5
   watermelon      15       0.3      3.51     0         13.99        3.12        0.19    0.1        3.77;

Positive Variable x(f) 'rupees of food f to be purchased daily (rupees)';

Free Variable cost 'total food bill (rupees)';

Equation
   nb(n) 'nutrient balance (units)'
   cb    'cost balance   (rupees)';

nb(n).. sum(f, a(f,n)*x(f)) =g= b(n);

cb..    cost =e= sum(f, x(f));

Model diet 'stiglers diet problem' / nb, cb /;

solve diet minimizing cost using lp;