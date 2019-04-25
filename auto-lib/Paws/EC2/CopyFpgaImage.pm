
package Paws::EC2::CopyFpgaImage;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has Name => (is => 'ro', isa => 'Str');
  has SourceFpgaImageId => (is => 'ro', isa => 'Str', required => 1);
  has SourceRegion => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CopyFpgaImage');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::CopyFpgaImageResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CopyFpgaImage - Arguments for method CopyFpgaImage on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CopyFpgaImage on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method CopyFpgaImage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CopyFpgaImage.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $CopyFpgaImageResult = $ec2->CopyFpgaImage(
      SourceFpgaImageId => 'MyString',
      SourceRegion      => 'MyString',
      ClientToken       => 'MyString',    # OPTIONAL
      Description       => 'MyString',    # OPTIONAL
      DryRun            => 1,             # OPTIONAL
      Name              => 'MyString',    # OPTIONAL
    );

    # Results:
    my $FpgaImageId = $CopyFpgaImageResult->FpgaImageId;

    # Returns a L<Paws::EC2::CopyFpgaImageResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/CopyFpgaImage>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. For more information, see Ensuring
Idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html).



=head2 Description => Str

The description for the new AFI.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Name => Str

The name for the new AFI. The default is the name of the source AFI.



=head2 B<REQUIRED> SourceFpgaImageId => Str

The ID of the source AFI.



=head2 B<REQUIRED> SourceRegion => Str

The region that contains the source AFI.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CopyFpgaImage in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

