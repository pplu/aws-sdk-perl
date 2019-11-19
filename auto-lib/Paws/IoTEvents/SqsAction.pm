# Generated from default/object.tt
package Paws::IoTEvents::SqsAction;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::IoTEvents::Types qw//;
  has QueueUrl => (is => 'ro', isa => Str, required => 1);
  has UseBase64 => (is => 'ro', isa => Bool);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'UseBase64' => 'useBase64',
                       'QueueUrl' => 'queueUrl'
                     },
  'IsRequired' => {
                    'QueueUrl' => 1
                  },
  'types' => {
               'QueueUrl' => {
                               'type' => 'Str'
                             },
               'UseBase64' => {
                                'type' => 'Bool'
                              }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEvents::SqsAction

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTEvents::SqsAction object:

  $service_obj->Method(Att1 => { QueueUrl => $value, ..., UseBase64 => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTEvents::SqsAction object:

  $result = $service_obj->Method(...);
  $result->Att1->QueueUrl

=head1 DESCRIPTION

Sends information about the detector model instance and the event which
triggered the action to an Amazon SQS queue.

=head1 ATTRIBUTES


=head2 B<REQUIRED> QueueUrl => Str

  The URL of the Amazon SQS queue where the data is written.


=head2 UseBase64 => Bool

  Set this to TRUE if you want the data to be Base-64 encoded before it
is written to the queue. Otherwise, set this to FALSE.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

