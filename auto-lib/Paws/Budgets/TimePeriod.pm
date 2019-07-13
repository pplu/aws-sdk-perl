package Paws::Budgets::TimePeriod;
  use Moose;
  has End => (is => 'ro', isa => 'Str');
  has Start => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Budgets::TimePeriod

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Budgets::TimePeriod object:

  $service_obj->Method(Att1 => { End => $value, ..., Start => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Budgets::TimePeriod object:

  $result = $service_obj->Method(...);
  $result->Att1->End

=head1 DESCRIPTION

The period of time that is covered by a budget. The period has a start
date and an end date. The start date must come before the end date.
There are no restrictions on the end date.

=head1 ATTRIBUTES


=head2 End => Str

  The end date for a budget. If you didn't specify an end date, AWS set
your end date to C<06/15/87 00:00 UTC>. The defaults are the same for
the AWS Billing and Cost Management console and the API.

After the end date, AWS deletes the budget and all associated
notifications and subscribers. You can change your end date with the
C<UpdateBudget> operation.


=head2 Start => Str

  The start date for a budget. If you created your budget and didn't
specify a start date, AWS defaults to the start of your chosen time
period (DAILY, MONTHLY, QUARTERLY, or ANNUALLY). For example, if you
created your budget on January 24, 2018, chose C<DAILY>, and didn't set
a start date, AWS set your start date to C<01/24/18 00:00 UTC>. If you
chose C<MONTHLY>, AWS set your start date to C<01/01/18 00:00 UTC>. The
defaults are the same for the AWS Billing and Cost Management console
and the API.

You can change your start date with the C<UpdateBudget> operation.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Budgets>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

