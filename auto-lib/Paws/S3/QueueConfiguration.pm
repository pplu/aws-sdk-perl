# Generated from default/object.tt
package Paws::S3::QueueConfiguration;
  use Moo;
  use Types::Standard qw/Str Undef ArrayRef/;
  use Paws::S3::Types qw/S3_NotificationConfigurationFilter/;
  has Events => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1);
  has Filter => (is => 'ro', isa => S3_NotificationConfigurationFilter);
  has Id => (is => 'ro', isa => Str);
  has QueueArn => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Events' => 1,
                    'QueueArn' => 1
                  },
  'NameInRequest' => {
                       'Events' => 'Event',
                       'QueueArn' => 'Queue'
                     },
  'types' => {
               'Events' => {
                             'type' => 'ArrayRef[Str|Undef]'
                           },
               'Id' => {
                         'type' => 'Str'
                       },
               'QueueArn' => {
                               'type' => 'Str'
                             },
               'Filter' => {
                             'class' => 'Paws::S3::NotificationConfigurationFilter',
                             'type' => 'S3_NotificationConfigurationFilter'
                           }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::QueueConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::QueueConfiguration object:

  $service_obj->Method(Att1 => { Events => $value, ..., QueueArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::QueueConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->Events

=head1 DESCRIPTION

Specifies the configuration for publishing messages to an Amazon Simple
Queue Service (Amazon SQS) queue when Amazon S3 detects specified
events.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Events => ArrayRef[Str|Undef]

  A collection of bucket events for which to send notiications


=head2 Filter => S3_NotificationConfigurationFilter

  


=head2 Id => Str

  


=head2 B<REQUIRED> QueueArn => Str

  The Amazon Resource Name (ARN) of the Amazon SQS queue to which Amazon
S3 publishes a message when it detects events of the specified type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

