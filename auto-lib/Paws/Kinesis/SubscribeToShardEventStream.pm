# Generated from default/object.tt
package Paws::Kinesis::SubscribeToShardEventStream;
  use Moo;
  use Types::Standard qw//;
  use Paws::Kinesis::Types qw/Kinesis_ResourceInUseException Kinesis_KMSOptInRequired Kinesis_KMSThrottlingException Kinesis_KMSDisabledException Kinesis_ResourceNotFoundException Kinesis_SubscribeToShardEvent Kinesis_InternalFailureException Kinesis_KMSNotFoundException Kinesis_KMSAccessDeniedException Kinesis_KMSInvalidStateException/;
  has InternalFailureException => (is => 'ro', isa => Kinesis_InternalFailureException);
  has KMSAccessDeniedException => (is => 'ro', isa => Kinesis_KMSAccessDeniedException);
  has KMSDisabledException => (is => 'ro', isa => Kinesis_KMSDisabledException);
  has KMSInvalidStateException => (is => 'ro', isa => Kinesis_KMSInvalidStateException);
  has KMSNotFoundException => (is => 'ro', isa => Kinesis_KMSNotFoundException);
  has KMSOptInRequired => (is => 'ro', isa => Kinesis_KMSOptInRequired);
  has KMSThrottlingException => (is => 'ro', isa => Kinesis_KMSThrottlingException);
  has ResourceInUseException => (is => 'ro', isa => Kinesis_ResourceInUseException);
  has ResourceNotFoundException => (is => 'ro', isa => Kinesis_ResourceNotFoundException);
  has SubscribeToShardEvent => (is => 'ro', isa => Kinesis_SubscribeToShardEvent, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'KMSThrottlingException' => {
                                             'class' => 'Paws::Kinesis::KMSThrottlingException',
                                             'type' => 'Kinesis_KMSThrottlingException'
                                           },
               'KMSAccessDeniedException' => {
                                               'class' => 'Paws::Kinesis::KMSAccessDeniedException',
                                               'type' => 'Kinesis_KMSAccessDeniedException'
                                             },
               'InternalFailureException' => {
                                               'class' => 'Paws::Kinesis::InternalFailureException',
                                               'type' => 'Kinesis_InternalFailureException'
                                             },
               'KMSInvalidStateException' => {
                                               'class' => 'Paws::Kinesis::KMSInvalidStateException',
                                               'type' => 'Kinesis_KMSInvalidStateException'
                                             },
               'KMSNotFoundException' => {
                                           'class' => 'Paws::Kinesis::KMSNotFoundException',
                                           'type' => 'Kinesis_KMSNotFoundException'
                                         },
               'KMSOptInRequired' => {
                                       'class' => 'Paws::Kinesis::KMSOptInRequired',
                                       'type' => 'Kinesis_KMSOptInRequired'
                                     },
               'ResourceInUseException' => {
                                             'class' => 'Paws::Kinesis::ResourceInUseException',
                                             'type' => 'Kinesis_ResourceInUseException'
                                           },
               'ResourceNotFoundException' => {
                                                'class' => 'Paws::Kinesis::ResourceNotFoundException',
                                                'type' => 'Kinesis_ResourceNotFoundException'
                                              },
               'SubscribeToShardEvent' => {
                                            'class' => 'Paws::Kinesis::SubscribeToShardEvent',
                                            'type' => 'Kinesis_SubscribeToShardEvent'
                                          },
               'KMSDisabledException' => {
                                           'class' => 'Paws::Kinesis::KMSDisabledException',
                                           'type' => 'Kinesis_KMSDisabledException'
                                         }
             },
  'IsRequired' => {
                    'SubscribeToShardEvent' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Kinesis::SubscribeToShardEventStream

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Kinesis::SubscribeToShardEventStream object:

  $service_obj->Method(Att1 => { InternalFailureException => $value, ..., SubscribeToShardEvent => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Kinesis::SubscribeToShardEventStream object:

  $result = $service_obj->Method(...);
  $result->Att1->InternalFailureException

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 InternalFailureException => Kinesis_InternalFailureException

  


=head2 KMSAccessDeniedException => Kinesis_KMSAccessDeniedException

  


=head2 KMSDisabledException => Kinesis_KMSDisabledException

  


=head2 KMSInvalidStateException => Kinesis_KMSInvalidStateException

  


=head2 KMSNotFoundException => Kinesis_KMSNotFoundException

  


=head2 KMSOptInRequired => Kinesis_KMSOptInRequired

  


=head2 KMSThrottlingException => Kinesis_KMSThrottlingException

  


=head2 ResourceInUseException => Kinesis_ResourceInUseException

  


=head2 ResourceNotFoundException => Kinesis_ResourceNotFoundException

  


=head2 B<REQUIRED> SubscribeToShardEvent => Kinesis_SubscribeToShardEvent

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Kinesis>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

