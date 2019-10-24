# Generated from default/object.tt
package Paws::SecurityHub::InsightResults;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SecurityHub::Types qw/SecurityHub_InsightResultValue/;
  has GroupByAttribute => (is => 'ro', isa => Str, required => 1);
  has InsightArn => (is => 'ro', isa => Str, required => 1);
  has ResultValues => (is => 'ro', isa => ArrayRef[SecurityHub_InsightResultValue], required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'InsightArn' => {
                                 'type' => 'Str'
                               },
               'ResultValues' => {
                                   'class' => 'Paws::SecurityHub::InsightResultValue',
                                   'type' => 'ArrayRef[SecurityHub_InsightResultValue]'
                                 },
               'GroupByAttribute' => {
                                       'type' => 'Str'
                                     }
             },
  'IsRequired' => {
                    'InsightArn' => 1,
                    'ResultValues' => 1,
                    'GroupByAttribute' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::InsightResults

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::InsightResults object:

  $service_obj->Method(Att1 => { GroupByAttribute => $value, ..., ResultValues => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::InsightResults object:

  $result = $service_obj->Method(...);
  $result->Att1->GroupByAttribute

=head1 DESCRIPTION

The insight results returned by the C<GetInsightResults> operation.

=head1 ATTRIBUTES


=head2 B<REQUIRED> GroupByAttribute => Str

  The attribute that the findings are grouped by for the insight whose
results are returned by the C<GetInsightResults> operation.


=head2 B<REQUIRED> InsightArn => Str

  The ARN of the insight whose results are returned by the
C<GetInsightResults> operation.


=head2 B<REQUIRED> ResultValues => ArrayRef[SecurityHub_InsightResultValue]

  The list of insight result values returned by the C<GetInsightResults>
operation.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

