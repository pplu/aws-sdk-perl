package Paws::SecurityHub::InsightResultValue;
  use Moose;
  has Count => (is => 'ro', isa => 'Int', required => 1);
  has GroupByAttributeValue => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::InsightResultValue

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::InsightResultValue object:

  $service_obj->Method(Att1 => { Count => $value, ..., GroupByAttributeValue => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::InsightResultValue object:

  $result = $service_obj->Method(...);
  $result->Att1->Count

=head1 DESCRIPTION

The insight result values returned by the GetInsightResults operation.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Count => Int

  The number of findings returned for each GroupByAttributeValue.


=head2 B<REQUIRED> GroupByAttributeValue => Str

  The value of the attribute by which the findings are grouped for the
insight's whose results are returned by the GetInsightResults
operation.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

