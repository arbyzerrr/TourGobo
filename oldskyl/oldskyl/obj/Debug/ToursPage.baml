   M S B A M L   `   `   `  ????B  >oldskyl, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:oldskyloldskyl  5          oldskyl.ToursPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      'localclr-namespace:oldskyl     5        N? Title$  	ToursPage??5	      .??5      ?  ? RowDefinitions 5   
   ?? 5      $
??Auto ?6   6,   ?? 5      $??* ?6   6)   .+?5   
   ?  ? Orientation$ 
Horizontal=?6   $??Center=?6-   .+?5      ??  ?? Orientation$ 
Horizontal=?6   .+?5      ?? $:??4Введите название для поиска:??6   $	??175??6@    ?? TextAlignment$
 Left=?6L   6c   ?? 5      -   5        $??
TBoxSearch??5   &   $	??225??6   6_   5      ?? 5      $ 
Horizontal=?6   .+?5      ?? $??Выберите тип:??6   $	??175??61   $
 Left=?6=   ?? 5      -   5         ??Name$ 	ComboType??5   '   $	??225??6    ?? DisplayMemberPath$
 name??6h   5      ?? 5      -   5         ??Name$ CheckActual??5      $E???Показывать только актуальные туры??6j   $??Center=?6?   ?? 5      -   5         ??Name$ ButtonChangingView??5   )   $y?Hidden=?6   $??30??6E   $??
Отели??6Q   $	??150??6a   $??Center=?6m   $??Center=?6?   $??	650 0 0 0q?6?   6?   5      ?? 5   
   -   5        $??
LViewTours??5       $??1??6   $??Disabled=?62   $??Center=?6h   ??5      ?? 5       .R?5!      ? $ 
Horizontal=?6    $??Center=?69   6X   5"      ??5$      ?? 5%      .R?5&      ? $??20q?6   $	??400??6'    5'      ?? 5(      $??70 ?6,   6:   ?? 5)      $	??310 ?6,   6;   ?? 5*      $
??auto ?6,   6<   ?? 5+      $
??auto ?6,   6<   .+?5-      ?? $	??400??6    $??1??6,   $??UniformToFill=?69   $??Center=?6Q   $??5q?6n   ??5.      ?? 5/   "   	 ?? Path$	 imagepreview?6*   
 ?? TargetNullValue
 50   &   ??51   *   IEC:\Users\arbyzerrr\source\repos\oldskyl\oldskyl\Resources\picture.png??6}   53   #   55      ?? 56      $??Center=?6:   $ Center=?6U   $	??390??6l   $
??Wrap=?57   $   $??Center=?68   $	??5 5q?6U   $??26(?6b   $??0??6p   ??56   $   ?? *name+57      ?? 58      $??2??6U   $??5 5 5 15q?6b   $??Center=?6t   $??26(?6?   $
??Bold"?6?   ??6$   ?? *price+ ?? StringFormat$ {0:N2}РУБ??6?   ?? 59      $??3??6g   $??14(?6t   $??Right=?6?   ??6$   ?? *tickestcount+$) #Билетов осталось:{0}??6?   ?? 5:      $??3??6A   $??14(?6N   $
??Left=?6\   ??6$   ?? *
ActualText+6y   5;      5<      5>      5@      5A      