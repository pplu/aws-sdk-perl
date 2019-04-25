package Paws::CostExplorer::DateInterval;
  use Moose;
  has End => (is => 'ro', isa => 'Str', required => 1);
  has Start => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::DateInterval

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CostExplorer::DateInterval object:

  $service_obj->Method(Att1 => { End => $value, ..., Start => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CostExplorer::DateInterval object:

  $result = $service_obj->Method(...);
  $result->Att1->End

=head1 DESCRIPTION

The time period that you want the usage and costs for.

=head1 ATTRIBUTES


=head2 B<REQUIRED> End => Str

  The end of the time period that you want the usage and costs for. The
end date is exclusive. For example, if C<end> is C<2017-05-01>, AWS
retrieves cost and usage data from the start date up to, but not
including, C<2017-05-01>.


=head2 B<REQUIRED> Start => Str

  The beginning of the time period that you want the usage and costs for.
The start date is inclusive. For example, if C<start> is C<2017-01-01>,
AWS retrieves cost and usage data starting at C<2017-01-01> up to the
end date.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

