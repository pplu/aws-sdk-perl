# Generated from default/object.tt
package Paws::Connect::CurrentMetricResult;
  use Moo;
  use Types::Standard qw/ArrayRef/;
  use Paws::Connect::Types qw/Connect_Dimensions Connect_CurrentMetricData/;
  has Collections => (is => 'ro', isa => ArrayRef[Connect_CurrentMetricData]);
  has Dimensions => (is => 'ro', isa => Connect_Dimensions);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Dimensions' => {
                                 'class' => 'Paws::Connect::Dimensions',
                                 'type' => 'Connect_Dimensions'
                               },
               'Collections' => {
                                  'class' => 'Paws::Connect::CurrentMetricData',
                                  'type' => 'ArrayRef[Connect_CurrentMetricData]'
                                }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::CurrentMetricResult

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Connect::CurrentMetricResult object:

  $service_obj->Method(Att1 => { Collections => $value, ..., Dimensions => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Connect::CurrentMetricResult object:

  $result = $service_obj->Method(...);
  $result->Att1->Collections

=head1 DESCRIPTION

A C<CurrentMetricResult> object.

=head1 ATTRIBUTES


=head2 Collections => ArrayRef[Connect_CurrentMetricData]

  The C<Collections> for the C<CurrentMetricResult> object.


=head2 Dimensions => Connect_Dimensions

  The C<Dimensions> for the C<CurrentMetricResult> object.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

