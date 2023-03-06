import 'package:delivery_app/app/core/ui/helpers/size_extensions.dart';
import 'package:delivery_app/app/core/ui/styles/text_styles.dart';
import 'package:delivery_app/app/models/payment_type_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_awesome_select/flutter_awesome_select.dart';

class PaymentsTypesField extends StatelessWidget {
  final List<PaymentTypeModel> paymentTypes;
  const PaymentsTypesField({super.key, required this.paymentTypes});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Text(
            'Forma de pagamento',
            style: context.textStyles.textRegular.copyWith(
              fontSize: 16,
            ),
          ),
        ),
        SmartSelect<String>.single(
          title: '',
          selectedValue: '',
          modalType: S2ModalType.bottomSheet,
          onChange: (value) {},
          tileBuilder: (context, state) {
            return InkWell(
              onTap: state.showModal,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    width: context.screenwidth,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          state.selected.title ?? '',
                          style: context.textStyles.textRegular,
                        ),
                        const Icon(Icons.arrow_forward_ios_rounded),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
          choiceItems: S2Choice.listFrom<String, Map<String, String>>(
            source: [
              {'value': 'VA', 'title': 'Vale Alimentação'},
              {'value': 'CC', 'title': 'Cartão de crédito'},
              {'value': '\$', 'title': 'Dinheiro'},
              {'value': 'PIX', 'title': 'Pix'},
            ],
            title: (index, item) => item['title'] ?? '',
            value: (index, item) => item['value'] ?? '',
            group: (index, item) => 'Selecione uma forma de pagamento',
          ),
          choiceType: S2ChoiceType.radios,
          choiceGrouped: true,
          modalFilter: true,
          placeholder: '',
        ),
      ],
    );
  }
}
