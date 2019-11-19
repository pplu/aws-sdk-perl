# Generated from default/object.tt
package Paws::Connect::Dimensions;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Connect::Types qw/Connect_QueueReference/;
  has Channel => (is => 'ro', isa => Str);
  has Queue => (is => 'ro', isa => Connect_QueueReference);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Queue' => {
                            'type' => 'Connect_QueueReference',
                            'class' => 'Paws::Connect::QueueReference'
                          },
               'Channel' => {
                              'type' => 'Str'
                            }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::Dimensions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Connect::Dimensions object:

  $service_obj->Method(Att1 => { Channel => $value, ..., Queue => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Connect::Dimensions object:

  $result = $service_obj->Method(...);
  $result->Att1->Channel

=head1 DESCRIPTION

Contains information about the dimensions for a set of metrics.

=head1 ATTRIBUTES


=head2 Channel => Str

  The channel used for grouping and filters.


=head2 Queue => Connect_QueueReference

  Information about the queue for which metrics are returned.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

