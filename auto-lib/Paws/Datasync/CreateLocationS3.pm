
package Paws::Datasync::CreateLocationS3;
  use Moose;
  has S3BucketArn => (is => 'ro', isa => 'Str', required => 1);
  has S3Config => (is => 'ro', isa => 'Paws::Datasync::S3Config', required => 1);
  has Subdirectory => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Datasync::TagListEntry]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLocationS3');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Datasync::CreateLocationS3Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::CreateLocationS3 - Arguments for method CreateLocationS3 on L<Paws::Datasync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateLocationS3 on the
L<AWS DataSync|Paws::Datasync> service. Use the attributes of this class
as arguments to method CreateLocationS3.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateLocationS3.

=head1 SYNOPSIS

    my $datasync = Paws->service('Datasync');
    my $CreateLocationS3Response = $datasync->CreateLocationS3(
      S3BucketArn => 'MyS3BucketArn',
      S3Config    => {
        BucketAccessRoleArn => 'MyIamRoleArn',    # max: 2048

      },
      Subdirectory => 'MySubdirectory',
      Tags         => [
        {
          Key   => 'MyTagKey',                    # min: 1, max: 256; OPTIONAL
          Value => 'MyTagValue',                  # min: 1, max: 256; OPTIONAL
        },
        ...
      ],                                          # OPTIONAL
    );

    # Results:
    my $LocationArn = $CreateLocationS3Response->LocationArn;

    # Returns a L<Paws::Datasync::CreateLocationS3Response> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datasync/CreateLocationS3>

=head1 ATTRIBUTES


=head2 B<REQUIRED> S3BucketArn => Str

The Amazon Resource Name (ARN) of the Amazon S3 bucket.



=head2 B<REQUIRED> S3Config => L<Paws::Datasync::S3Config>





=head2 B<REQUIRED> Subdirectory => Str

A subdirectory in the Amazon S3 bucket. This subdirectory in Amazon S3
is used to read data from the S3 source location or write data to the
S3 destination.



=head2 Tags => ArrayRef[L<Paws::Datasync::TagListEntry>]

The key-value pair that represents the tag that you want to add to the
location. The value can be an empty string. We recommend using tags to
name your resources.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateLocationS3 in L<Paws::Datasync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

