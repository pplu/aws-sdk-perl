
package Paws::Budgets::CreateNotification;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', required => 1);
  has BudgetName => (is => 'ro', isa => 'Str', required => 1);
  has Notification => (is => 'ro', isa => 'Paws::Budgets::Notification', required => 1);
  has Subscribers => (is => 'ro', isa => 'ArrayRef[Paws::Budgets::Subscriber]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateNotification');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Budgets::CreateNotificationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Budgets::CreateNotification - Arguments for method CreateNotification on L<Paws::Budgets>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateNotification on the 
AWS Budgets service. Use the attributes of this class
as arguments to method CreateNotification.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateNotification.

As an example:

  $service_obj->CreateNotification(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str





=head2 B<REQUIRED> BudgetName => Str





=head2 B<REQUIRED> Notification => L<Paws::Budgets::Notification>





=head2 B<REQUIRED> Subscribers => ArrayRef[L<Paws::Budgets::Subscriber>]






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateNotification in L<Paws::Budgets>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

