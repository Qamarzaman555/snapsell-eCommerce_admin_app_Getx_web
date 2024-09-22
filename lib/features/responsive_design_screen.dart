import 'package:flutter/material.dart';

import '../common/widgets/containers/rounded_container.dart';
import '../common/widgets/layouts/templates/site_layout.dart';

class ResponsiveDesignScreen extends StatelessWidget {
  const ResponsiveDesignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const TSiteTemplete(
      desktop: Desktop(),
      tablet: Tablet(),
      mobile: Mobile(),
    );
  }
}

class Desktop extends StatelessWidget {
  const Desktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: TRoundedContainer(
                height: 420,
                backgroundColor: Colors.blue.withOpacity(0.2),
                child: const Center(child: Text('BOX 1')),
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              flex: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TRoundedContainer(
                    height: 200,
                    backgroundColor: Colors.orange.withOpacity(0.2),
                    child: const Center(child: Text('BOX 2')),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: TRoundedContainer(
                          height: 200,
                          backgroundColor: Colors.red.withOpacity(0.2),
                          child: const Center(child: Text('BOX 3')),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: TRoundedContainer(
                          height: 200,
                          backgroundColor: Colors.green.withOpacity(0.2),
                          child: const Center(child: Text('BOX 4')),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(width: 20),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            Expanded(
              flex: 9,
              child: TRoundedContainer(
                height: 150,
                backgroundColor: Colors.blue.withOpacity(0.2),
                child: const Center(child: Text('BOX 5')),
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              flex: 5,
              child: TRoundedContainer(
                height: 150,
                backgroundColor: Colors.blue.withOpacity(0.2),
                child: const Center(child: Text('BOX 6')),
              ),
            ),
          ],
        )
      ],
    );
  }
}

class Tablet extends StatelessWidget {
  const Tablet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: TRoundedContainer(
                height: 420,
                backgroundColor: Colors.blue.withOpacity(0.2),
                child: const Center(child: Text('BOX 1')),
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              flex: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TRoundedContainer(
                    height: 200,
                    backgroundColor: Colors.orange.withOpacity(0.2),
                    child: const Center(child: Text('BOX 2')),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: TRoundedContainer(
                          height: 200,
                          backgroundColor: Colors.red.withOpacity(0.2),
                          child: const Center(child: Text('BOX 3')),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: TRoundedContainer(
                          height: 200,
                          backgroundColor: Colors.green.withOpacity(0.2),
                          child: const Center(child: Text('BOX 4')),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(width: 20),
          ],
        ),
        const SizedBox(height: 20),
        Column(
          children: [
            TRoundedContainer(
              height: 150,
              width: double.infinity,
              backgroundColor: Colors.blue.withOpacity(0.2),
              child: const Center(child: Text('BOX 5')),
            ),
            const SizedBox(height: 20),
            TRoundedContainer(
              height: 150,
              width: double.infinity,
              backgroundColor: Colors.blue.withOpacity(0.2),
              child: const Center(child: Text('BOX 6')),
            ),
          ],
        )
      ],
    );
  }
}

class Mobile extends StatelessWidget {
  const Mobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TRoundedContainer(
          height: 420,
          width: double.infinity,
          backgroundColor: Colors.blue.withOpacity(0.2),
          child: const Center(child: Text('BOX 1')),
        ),
        const SizedBox(height: 20),
        TRoundedContainer(
          height: 200,
          width: double.infinity,
          backgroundColor: Colors.orange.withOpacity(0.2),
          child: const Center(child: Text('BOX 2')),
        ),
        const SizedBox(height: 20),
        TRoundedContainer(
          height: 200,
          width: double.infinity,
          backgroundColor: Colors.red.withOpacity(0.2),
          child: const Center(child: Text('BOX 3')),
        ),
        const SizedBox(height: 20),
        TRoundedContainer(
          height: 200,
          width: double.infinity,
          backgroundColor: Colors.green.withOpacity(0.2),
          child: const Center(child: Text('BOX 4')),
        ),
        const SizedBox(height: 20),
        TRoundedContainer(
          height: 150,
          width: double.infinity,
          backgroundColor: Colors.blue.withOpacity(0.2),
          child: const Center(child: Text('BOX 5')),
        ),
        const SizedBox(height: 20),
        TRoundedContainer(
          height: 150,
          width: double.infinity,
          backgroundColor: Colors.blue.withOpacity(0.2),
          child: const Center(child: Text('BOX 6')),
        ),
      ],
    );
  }
}
