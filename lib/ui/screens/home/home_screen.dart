import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../states/ride_preference_state.dart';
import '../home/view_modal/home_model.dart';
import 'widgets/home_content.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final globalState = Provider.of<RidePreferenceState>(context);

    final viewModel = HomeViewModel(globalState);

    return Scaffold(
      body: HomeContent(viewModel: viewModel),
    );
  }
}