package Paws::S3Control::S3InitiateRestoreObjectOperation;
  use Moose;
  has ExpirationInDays => (is => 'ro', isa => 'Int');
  has GlacierJobTier => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::S3InitiateRestoreObjectOperation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3Control::S3InitiateRestoreObjectOperation object:

  $service_obj->Method(Att1 => { ExpirationInDays => $value, ..., GlacierJobTier => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3Control::S3InitiateRestoreObjectOperation object:

  $result = $service_obj->Method(...);
  $result->Att1->ExpirationInDays

=head1 DESCRIPTION

Contains the configuration parameters for an Initiate Glacier Restore
job. Amazon S3 batch operations passes each value through to the
underlying POST Object restore API. For more information about the
parameters for this operation, see Restoring Archives
(https://docs.aws.amazon.com/AmazonS3/latest/API/RESTObjectPOSTrestore.html#RESTObjectPOSTrestore-restore-request).

=head1 ATTRIBUTES


=head2 ExpirationInDays => Int

  


=head2 GlacierJobTier => Str

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3Control>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

