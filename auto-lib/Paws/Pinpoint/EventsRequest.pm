# Generated from default/object.tt
package Paws::Pinpoint::EventsRequest;
  use Moo;
  use Types::Standard qw//;
  use Paws::Pinpoint::Types qw/Pinpoint_MapOfEventsBatch/;
  has BatchItem => (is => 'ro', isa => Pinpoint_MapOfEventsBatch, required => 1);

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'BatchItem' => 1
                  },
  'types' => {
               'BatchItem' => {
                                'class' => 'Paws::Pinpoint::MapOfEventsBatch',
                                'type' => 'Pinpoint_MapOfEventsBatch'
                              }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::EventsRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::EventsRequest object:

  $service_obj->Method(Att1 => { BatchItem => $value, ..., BatchItem => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::EventsRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->BatchItem

=head1 DESCRIPTION

Specifies a batch of events to process.

=head1 ATTRIBUTES


=head2 B<REQUIRED> BatchItem => Pinpoint_MapOfEventsBatch

  The batch of events to process. For each item in a batch, the endpoint
ID acts as a key that has an EventsBatch object as its value.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

