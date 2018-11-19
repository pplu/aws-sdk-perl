package Paws::S3::NotificationConfigurationFilter;
  use Moose;
  has Key => (is => 'ro', isa => 'Paws::S3::S3KeyFilter', request_name => 'S3Key', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::NotificationConfigurationFilter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::NotificationConfigurationFilter object:

  $service_obj->Method(Att1 => { Key => $value, ..., Key => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::NotificationConfigurationFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->Key

=head1 DESCRIPTION

A container for object key name filtering rules. For information about
key name filtering, see Configuring Event Notifications
(http://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html)
in the I<Amazon Simple Storage Service Developer Guide>.

=head1 ATTRIBUTES


=head2 Key => L<Paws::S3::S3KeyFilter>

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

