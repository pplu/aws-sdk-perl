# Generated from default/object.tt
package Paws::S3::SelectObjectContentEventStream;
  use Moo;
  use Types::Standard qw//;
  use Paws::S3::Types qw/S3_RecordsEvent S3_ProgressEvent S3_ContinuationEvent S3_EndEvent S3_StatsEvent/;
  has Cont => (is => 'ro', isa => S3_ContinuationEvent);
  has End => (is => 'ro', isa => S3_EndEvent);
  has Progress => (is => 'ro', isa => S3_ProgressEvent);
  has Records => (is => 'ro', isa => S3_RecordsEvent);
  has Stats => (is => 'ro', isa => S3_StatsEvent);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'End' => {
                          'class' => 'Paws::S3::EndEvent',
                          'type' => 'S3_EndEvent'
                        },
               'Progress' => {
                               'class' => 'Paws::S3::ProgressEvent',
                               'type' => 'S3_ProgressEvent'
                             },
               'Records' => {
                              'class' => 'Paws::S3::RecordsEvent',
                              'type' => 'S3_RecordsEvent'
                            },
               'Stats' => {
                            'class' => 'Paws::S3::StatsEvent',
                            'type' => 'S3_StatsEvent'
                          },
               'Cont' => {
                           'class' => 'Paws::S3::ContinuationEvent',
                           'type' => 'S3_ContinuationEvent'
                         }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::SelectObjectContentEventStream

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::SelectObjectContentEventStream object:

  $service_obj->Method(Att1 => { Cont => $value, ..., Stats => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::SelectObjectContentEventStream object:

  $result = $service_obj->Method(...);
  $result->Att1->Cont

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Cont => S3_ContinuationEvent

  The Continuation Event.


=head2 End => S3_EndEvent

  The End Event.


=head2 Progress => S3_ProgressEvent

  The Progress Event.


=head2 Records => S3_RecordsEvent

  The Records Event.


=head2 Stats => S3_StatsEvent

  The Stats Event.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

