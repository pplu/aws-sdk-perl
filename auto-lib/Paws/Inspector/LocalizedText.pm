package Paws::Inspector::LocalizedText;
  use Moose;
  has key => (is => 'ro', isa => 'Paws::Inspector::LocalizedTextKey');
  has parameters => (is => 'ro', isa => 'ArrayRef[Paws::Inspector::Parameter]');
1;
