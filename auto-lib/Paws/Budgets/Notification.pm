package Paws::Budgets::Notification;
  use Moose;
  has ComparisonOperator => (is => 'ro', isa => 'Str', required => 1);
  has NotificationType => (is => 'ro', isa => 'Str', required => 1);
  has Threshold => (is => 'ro', isa => 'Num', required => 1);
  has ThresholdType => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Budgets::Notification

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Budgets::Notification object:

  $service_obj->Method(Att1 => { ComparisonOperator => $value, ..., ThresholdType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Budgets::Notification object:

  $result = $service_obj->Method(...);
  $result->Att1->ComparisonOperator

=head1 DESCRIPTION

Notification model. Each budget may contain multiple notifications with
different settings.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ComparisonOperator => Str

  


=head2 B<REQUIRED> NotificationType => Str

  


=head2 B<REQUIRED> Threshold => Num

  


=head2 ThresholdType => Str

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Budgets>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

