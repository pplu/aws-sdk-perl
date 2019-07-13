package Paws::Glue::EncryptionConfiguration;
  use Moose;
  has CloudWatchEncryption => (is => 'ro', isa => 'Paws::Glue::CloudWatchEncryption');
  has JobBookmarksEncryption => (is => 'ro', isa => 'Paws::Glue::JobBookmarksEncryption');
  has S3Encryption => (is => 'ro', isa => 'ArrayRef[Paws::Glue::S3Encryption]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::EncryptionConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::EncryptionConfiguration object:

  $service_obj->Method(Att1 => { CloudWatchEncryption => $value, ..., S3Encryption => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::EncryptionConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->CloudWatchEncryption

=head1 DESCRIPTION

Specifies an encryption configuration.

=head1 ATTRIBUTES


=head2 CloudWatchEncryption => L<Paws::Glue::CloudWatchEncryption>

  The encryption configuration for CloudWatch.


=head2 JobBookmarksEncryption => L<Paws::Glue::JobBookmarksEncryption>

  The encryption configuration for Job Bookmarks.


=head2 S3Encryption => ArrayRef[L<Paws::Glue::S3Encryption>]

  The encryption configuration for S3 data.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

