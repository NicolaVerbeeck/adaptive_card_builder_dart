import 'package:adaptive_card_builder/src/builder/element/element_builder.dart';
import 'package:adaptive_card_builder/src/model/element.dart';

abstract mixin class ElementContainerHelperV1Dot0 {
  void addElement(Element element);

  void addTextBlock(
    String text,
    void Function(TextBlockBuilderV1Dot0) builder,
  ) {
    addElement(TextBlockBuilderV1Dot0(text).apply(builder).build());
  }

  void addImage(Uri url, void Function(ImageBuilderV1Dot0) builder) {
    addElement(ImageBuilderV1Dot0(url).apply(builder).build());
  }

  void addContainer(void Function(ContainerBuilderV1Dot0) builder) {
    addElement(ContainerBuilderV1Dot0().apply(builder).build());
  }

  void addColumnSet(void Function(ColumnSetBuilderV1Dot0) builder) {
    addElement(ColumnSetBuilderV1Dot0().apply(builder).build());
  }

  void addFactSet(void Function(FactSetBuilderV1Dot0) builder) {
    addElement(FactSetBuilderV1Dot0().apply(builder).build());
  }

  void addImageSet(void Function(ImageSetBuilderV1Dot0) builder) {
    addElement(ImageSetBuilderV1Dot0().apply(builder).build());
  }

  void addInputText(String id, void Function(TextInputBuilderV1Dot0) builder) {
    addElement(TextInputBuilderV1Dot0(id).apply(builder).build());
  }

  void addNumberInput(
    String id,
    void Function(NumberInputBuilderV1Dot0) builder,
  ) {
    addElement(NumberInputBuilderV1Dot0(id).apply(builder).build());
  }

  void addDateInput(String id, void Function(DateInputBuilderV1Dot0) builder) {
    addElement(DateInputBuilderV1Dot0(id).apply(builder).build());
  }

  void addTimeInput(String id, void Function(TimeInputBuilderV1Dot0) builder) {
    addElement(TimeInputBuilderV1Dot0(id).apply(builder).build());
  }

  void addToggleInput(
    String id,
    String title,
    void Function(ToggleInputBuilderV1Dot0) builder,
  ) {
    addElement(
      ToggleInputBuilderV1Dot0(id: id, title: title).apply(builder).build(),
    );
  }

  void addChoiceSet(String id, void Function(ChoiceSetBuilderV1Dot0) builder) {
    addElement(ChoiceSetBuilderV1Dot0(id).apply(builder).build());
  }
}

abstract mixin class ElementContainerHelperV1Dot1 {
  void addElement(Element element);

  void addTextBlock(
    String text,
    void Function(TextBlockBuilderV1Dot1) builder,
  ) {
    addElement(TextBlockBuilderV1Dot1(text).apply(builder).build());
  }

  void addImage(Uri url, void Function(ImageBuilderV1Dot1) builder) {
    addElement(ImageBuilderV1Dot1(url).apply(builder).build());
  }

  void addContainer(void Function(ContainerBuilderV1Dot1) builder) {
    addElement(ContainerBuilderV1Dot1().apply(builder).build());
  }

  void addColumnSet(void Function(ColumnSetBuilderV1Dot1) builder) {
    addElement(ColumnSetBuilderV1Dot1().apply(builder).build());
  }

  void addFactSet(void Function(FactSetBuilderV1Dot1) builder) {
    addElement(FactSetBuilderV1Dot1().apply(builder).build());
  }

  void addImageSet(void Function(ImageSetBuilderV1Dot1) builder) {
    addElement(ImageSetBuilderV1Dot1().apply(builder).build());
  }

  void addInputText(String id, void Function(TextInputBuilderV1Dot1) builder) {
    addElement(TextInputBuilderV1Dot1(id).apply(builder).build());
  }

  void addNumberInput(
    String id,
    void Function(NumberInputBuilderV1Dot1) builder,
  ) {
    addElement(NumberInputBuilderV1Dot1(id).apply(builder).build());
  }

  void addDateInput(String id, void Function(DateInputBuilderV1Dot1) builder) {
    addElement(DateInputBuilderV1Dot1(id).apply(builder).build());
  }

  void addTimeInput(String id, void Function(TimeInputBuilderV1Dot1) builder) {
    addElement(TimeInputBuilderV1Dot1(id).apply(builder).build());
  }

  void addToggleInput(
    String id,
    String title,
    void Function(ToggleInputBuilderV1Dot1) builder,
  ) {
    addElement(
      ToggleInputBuilderV1Dot1(id: id, title: title).apply(builder).build(),
    );
  }

  void addChoiceSet(String id, void Function(ChoiceSetBuilderV1Dot1) builder) {
    addElement(ChoiceSetBuilderV1Dot1(id).apply(builder).build());
  }

  void addMedia(
    List<MediaSource> sources,
    void Function(MediaBuilderV1Dot1) builder,
  ) {
    addElement(MediaBuilderV1Dot1(sources).apply(builder).build());
  }
}

abstract mixin class ElementContainerHelperV1Dot2 {
  void addElement(Element element);

  void addTextBlock(
    String text,
    void Function(TextBlockBuilderV1Dot2) builder,
  ) {
    addElement(TextBlockBuilderV1Dot2(text).apply(builder).build());
  }

  void addImage(Uri url, void Function(ImageBuilderV1Dot2) builder) {
    addElement(ImageBuilderV1Dot2(url).apply(builder).build());
  }

  void addContainer(void Function(ContainerBuilderV1Dot2) builder) {
    addElement(ContainerBuilderV1Dot2().apply(builder).build());
  }

  void addColumnSet(void Function(ColumnSetBuilderV1Dot2) builder) {
    addElement(ColumnSetBuilderV1Dot2().apply(builder).build());
  }

  void addFactSet(void Function(FactSetBuilderV1Dot2) builder) {
    addElement(FactSetBuilderV1Dot2().apply(builder).build());
  }

  void addImageSet(void Function(ImageSetBuilderV1Dot2) builder) {
    addElement(ImageSetBuilderV1Dot2().apply(builder).build());
  }

  void addInputText(String id, void Function(TextInputBuilderV1Dot2) builder) {
    addElement(TextInputBuilderV1Dot2(id).apply(builder).build());
  }

  void addNumberInput(
    String id,
    void Function(NumberInputBuilderV1Dot2) builder,
  ) {
    addElement(NumberInputBuilderV1Dot2(id).apply(builder).build());
  }

  void addDateInput(String id, void Function(DateInputBuilderV1Dot2) builder) {
    addElement(DateInputBuilderV1Dot2(id).apply(builder).build());
  }

  void addTimeInput(String id, void Function(TimeInputBuilderV1Dot2) builder) {
    addElement(TimeInputBuilderV1Dot2(id).apply(builder).build());
  }

  void addToggleInput(
    String id,
    String title,
    void Function(ToggleInputBuilderV1Dot2) builder,
  ) {
    addElement(
      ToggleInputBuilderV1Dot2(id: id, title: title).apply(builder).build(),
    );
  }

  void addChoiceSet(String id, void Function(ChoiceSetBuilderV1Dot2) builder) {
    addElement(ChoiceSetBuilderV1Dot2(id).apply(builder).build());
  }

  void addMedia(
    List<MediaSource> sources,
    void Function(MediaBuilderV1Dot1) builder,
  ) {
    addElement(MediaBuilderV1Dot1(sources).apply(builder).build());
  }

  void addRichTextBlock(void Function(RichTextBlockBuilderV1Dot2) builder) {
    addElement(RichTextBlockBuilderV1Dot2().apply(builder).build());
  }

  void addActionSet(void Function(ActionSetBuilderV1Dot2) builder) {
    addElement(ActionSetBuilderV1Dot2().apply(builder).build());
  }
}

abstract mixin class ElementContainerHelperV1Dot3 {
  void addElement(Element element);

  void addTextBlock(
    String text,
    void Function(TextBlockBuilderV1Dot2) builder,
  ) {
    addElement(TextBlockBuilderV1Dot2(text).apply(builder).build());
  }

  void addImage(Uri url, void Function(ImageBuilderV1Dot2) builder) {
    addElement(ImageBuilderV1Dot2(url).apply(builder).build());
  }

  void addContainer(void Function(ContainerBuilderV1Dot3) builder) {
    addElement(ContainerBuilderV1Dot3().apply(builder).build());
  }

  void addColumnSet(void Function(ColumnSetBuilderV1Dot2) builder) {
    addElement(ColumnSetBuilderV1Dot2().apply(builder).build());
  }

  void addFactSet(void Function(FactSetBuilderV1Dot2) builder) {
    addElement(FactSetBuilderV1Dot2().apply(builder).build());
  }

  void addImageSet(void Function(ImageSetBuilderV1Dot2) builder) {
    addElement(ImageSetBuilderV1Dot2().apply(builder).build());
  }

  void addInputText(String id, void Function(TextInputBuilderV1Dot3) builder) {
    addElement(TextInputBuilderV1Dot3(id).apply(builder).build());
  }

  void addNumberInput(
    String id,
    void Function(NumberInputBuilderV1Dot3) builder,
  ) {
    addElement(NumberInputBuilderV1Dot3(id).apply(builder).build());
  }

  void addDateInput(String id, void Function(DateInputBuilderV1Dot3) builder) {
    addElement(DateInputBuilderV1Dot3(id).apply(builder).build());
  }

  void addTimeInput(String id, void Function(TimeInputBuilderV1Dot3) builder) {
    addElement(TimeInputBuilderV1Dot3(id).apply(builder).build());
  }

  void addToggleInput(
    String id,
    String title,
    void Function(ToggleInputBuilderV1Dot3) builder,
  ) {
    addElement(
      ToggleInputBuilderV1Dot3(id: id, title: title).apply(builder).build(),
    );
  }

  void addChoiceSet(String id, void Function(ChoiceSetBuilderV1Dot3) builder) {
    addElement(ChoiceSetBuilderV1Dot3(id).apply(builder).build());
  }

  void addMedia(
    List<MediaSource> sources,
    void Function(MediaBuilderV1Dot2) builder,
  ) {
    addElement(MediaBuilderV1Dot2(sources).apply(builder).build());
  }

  void addRichTextBlock(void Function(RichTextBlockBuilderV1Dot2) builder) {
    addElement(RichTextBlockBuilderV1Dot2().apply(builder).build());
  }

  void addActionSet(void Function(ActionSetBuilderV1Dot2) builder) {
    addElement(ActionSetBuilderV1Dot2().apply(builder).build());
  }
}

abstract mixin class ElementContainerHelperV1Dot4 {
  void addElement(Element element);

  void addTextBlock(
    String text,
    void Function(TextBlockBuilderV1Dot2) builder,
  ) {
    addElement(TextBlockBuilderV1Dot2(text).apply(builder).build());
  }

  void addImage(Uri url, void Function(ImageBuilderV1Dot4) builder) {
    addElement(ImageBuilderV1Dot4(url).apply(builder).build());
  }

  void addContainer(void Function(ContainerBuilderV1Dot4) builder) {
    addElement(ContainerBuilderV1Dot4().apply(builder).build());
  }

  void addColumnSet(void Function(ColumnSetBuilderV1Dot2) builder) {
    addElement(ColumnSetBuilderV1Dot2().apply(builder).build());
  }

  void addFactSet(void Function(FactSetBuilderV1Dot2) builder) {
    addElement(FactSetBuilderV1Dot2().apply(builder).build());
  }

  void addImageSet(void Function(ImageSetBuilderV1Dot2) builder) {
    addElement(ImageSetBuilderV1Dot2().apply(builder).build());
  }

  void addInputText(String id, void Function(TextInputBuilderV1Dot4) builder) {
    addElement(TextInputBuilderV1Dot4(id).apply(builder).build());
  }

  void addNumberInput(
    String id,
    void Function(NumberInputBuilderV1Dot3) builder,
  ) {
    addElement(NumberInputBuilderV1Dot3(id).apply(builder).build());
  }

  void addDateInput(String id, void Function(DateInputBuilderV1Dot3) builder) {
    addElement(DateInputBuilderV1Dot3(id).apply(builder).build());
  }

  void addTimeInput(String id, void Function(TimeInputBuilderV1Dot3) builder) {
    addElement(TimeInputBuilderV1Dot3(id).apply(builder).build());
  }

  void addToggleInput(
    String id,
    String title,
    void Function(ToggleInputBuilderV1Dot3) builder,
  ) {
    addElement(
      ToggleInputBuilderV1Dot3(id: id, title: title).apply(builder).build(),
    );
  }

  void addChoiceSet(String id, void Function(ChoiceSetBuilderV1Dot3) builder) {
    addElement(ChoiceSetBuilderV1Dot3(id).apply(builder).build());
  }

  void addMedia(
    List<MediaSource> sources,
    void Function(MediaBuilderV1Dot2) builder,
  ) {
    addElement(MediaBuilderV1Dot2(sources).apply(builder).build());
  }

  void addRichTextBlock(void Function(RichTextBlockBuilderV1Dot2) builder) {
    addElement(RichTextBlockBuilderV1Dot2().apply(builder).build());
  }

  void addActionSet(void Function(ActionSetBuilderV1Dot4) builder) {
    addElement(ActionSetBuilderV1Dot4().apply(builder).build());
  }
}

abstract mixin class ElementContainerHelperV1Dot5 {
  void addElement(Element element);

  void addTextBlock(
    String text,
    void Function(TextBlockBuilderV1Dot5) builder,
  ) {
    addElement(TextBlockBuilderV1Dot5(text).apply(builder).build());
  }

  void addImage(Uri url, void Function(ImageBuilderV1Dot5) builder) {
    addElement(ImageBuilderV1Dot5(url).apply(builder).build());
  }

  void addContainer(void Function(ContainerBuilderV1Dot5) builder) {
    addElement(ContainerBuilderV1Dot5().apply(builder).build());
  }

  void addColumnSet(void Function(ColumnSetBuilderV1Dot5) builder) {
    addElement(ColumnSetBuilderV1Dot5().apply(builder).build());
  }

  void addFactSet(void Function(FactSetBuilderV1Dot2) builder) {
    addElement(FactSetBuilderV1Dot2().apply(builder).build());
  }

  void addImageSet(void Function(ImageSetBuilderV1Dot2) builder) {
    addElement(ImageSetBuilderV1Dot2().apply(builder).build());
  }

  void addInputText(String id, void Function(TextInputBuilderV1Dot5) builder) {
    addElement(TextInputBuilderV1Dot5(id).apply(builder).build());
  }

  void addNumberInput(
    String id,
    void Function(NumberInputBuilderV1Dot3) builder,
  ) {
    addElement(NumberInputBuilderV1Dot3(id).apply(builder).build());
  }

  void addDateInput(String id, void Function(DateInputBuilderV1Dot3) builder) {
    addElement(DateInputBuilderV1Dot3(id).apply(builder).build());
  }

  void addTimeInput(String id, void Function(TimeInputBuilderV1Dot3) builder) {
    addElement(TimeInputBuilderV1Dot3(id).apply(builder).build());
  }

  void addToggleInput(
    String id,
    String title,
    void Function(ToggleInputBuilderV1Dot3) builder,
  ) {
    addElement(
      ToggleInputBuilderV1Dot3(id: id, title: title).apply(builder).build(),
    );
  }

  void addChoiceSet(String id, void Function(ChoiceSetBuilderV1Dot3) builder) {
    addElement(ChoiceSetBuilderV1Dot3(id).apply(builder).build());
  }

  void addMedia(
    List<MediaSource> sources,
    void Function(MediaBuilderV1Dot2) builder,
  ) {
    addElement(MediaBuilderV1Dot2(sources).apply(builder).build());
  }

  void addRichTextBlock(void Function(RichTextBlockBuilderV1Dot2) builder) {
    addElement(RichTextBlockBuilderV1Dot2().apply(builder).build());
  }

  void addActionSet(void Function(ActionSetBuilderV1Dot5) builder) {
    addElement(ActionSetBuilderV1Dot5().apply(builder).build());
  }
}

extension _ApplyExtension<T> on T {
  T apply(void Function(T) builder) {
    builder(this);
    return this;
  }
}
