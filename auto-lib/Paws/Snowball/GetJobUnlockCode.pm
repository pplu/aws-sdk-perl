
package Paws::Snowball::GetJobUnlockCode;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetJobUnlockCode');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Snowball::GetJobUnlockCodeResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Snowball::GetJobUnlockCode - Arguments for method GetJobUnlockCode on L<Paws::Snowball>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetJobUnlockCode on the
L<Amazon ImportE<sol>Export Snowball|Paws::Snowball> service. Use the attributes of this class
as arguments to method GetJobUnlockCode.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetJobUnlockCode.

=head1 SYNOPSIS

    my $snowball = Paws->service('Snowball');
   # To get the unlock code for a job you've created for AWS Snowball
   # Returns the UnlockCode code value for the specified job. A particular
   # UnlockCode value can be accessed for up to 90 days after the associated job
   # has been created.
   #
   # The UnlockCode value is a 29-character code with 25 alphanumeric characters
   # and 4 hyphens. This code is used to decrypt the manifest file when it is
   # passed along with the manifest to the Snowball through the Snowball client
   # when the client is started for the first time.
   #
   # As a best practice, we recommend that you don't save a copy of the
   # UnlockCode in the same location as the manifest file for that job. Saving
   # these separately helps prevent unauthorized parties from gaining access to
   # the Snowball associated with that job.
    my $GetJobUnlockCodeResult = $snowball->GetJobUnlockCode(
      {
        'JobId' => 'JID123e4567-e89b-12d3-a456-426655440000'
      }
    );

    # Results:
    my $UnlockCode = $GetJobUnlockCodeResult->UnlockCode;

    # Returns a L<Paws::Snowball::GetJobUnlockCodeResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/snowball/GetJobUnlockCode>

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobId => Str

The ID for the job that you want to get the C<UnlockCode> value for,
for example C<JID123e4567-e89b-12d3-a456-426655440000>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetJobUnlockCode in L<Paws::Snowball>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

