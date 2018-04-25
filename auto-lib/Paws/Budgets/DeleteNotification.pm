
package Paws::Budgets::DeleteNotification;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', required => 1);
  has BudgetName => (is => 'ro', isa => 'Str', required => 1);
  has Notification => (is => 'ro', isa => 'Paws::Budgets::Notification', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteNotification');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Budgets::DeleteNotificationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Budgets::DeleteNotification - Arguments for method DeleteNotification on L<Paws::Budgets>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteNotification on the 
L<AWS Budgets|Paws::Budgets> service. Use the attributes of this class
as arguments to method DeleteNotification.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteNotification.

As an example:

  $service_obj->DeleteNotification(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The C<accountId> that is associated with the budget whose notification
you want to delete.



=head2 B<REQUIRED> BudgetName => Str

The name of the budget whose notification you want to delete.



=head2 B<REQUIRED> Notification => L<Paws::Budgets::Notification>

The notification that you want to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteNotification in L<Paws::Budgets>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

