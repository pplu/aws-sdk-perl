
package Paws::GameLift::CreateScript;
  use Moose;
  has Name => (is => 'ro', isa => 'Str');
  has StorageLocation => (is => 'ro', isa => 'Paws::GameLift::S3Location');
  has Version => (is => 'ro', isa => 'Str');
  has ZipFile => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateScript');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::CreateScriptOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::CreateScript - Arguments for method CreateScript on L<Paws::GameLift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateScript on the
L<Amazon GameLift|Paws::GameLift> service. Use the attributes of this class
as arguments to method CreateScript.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateScript.

=head1 SYNOPSIS

    my $gamelift = Paws->service('GameLift');
    my $CreateScriptOutput = $gamelift->CreateScript(
      Name            => 'MyNonZeroAndMaxString',    # OPTIONAL
      StorageLocation => {
        Bucket        => 'MyNonEmptyString',         # min: 1; OPTIONAL
        Key           => 'MyNonEmptyString',         # min: 1; OPTIONAL
        ObjectVersion => 'MyNonEmptyString',         # min: 1; OPTIONAL
        RoleArn       => 'MyNonEmptyString',         # min: 1; OPTIONAL
      },    # OPTIONAL
      Version => 'MyNonZeroAndMaxString',    # OPTIONAL
      ZipFile => 'BlobZipBlob',              # OPTIONAL
    );

    # Results:
    my $Script = $CreateScriptOutput->Script;

    # Returns a L<Paws::GameLift::CreateScriptOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift/CreateScript>

=head1 ATTRIBUTES


=head2 Name => Str

Descriptive label that is associated with a script. Script names do not
need to be unique. You can use UpdateScript to change this value later.



=head2 StorageLocation => L<Paws::GameLift::S3Location>

Location of the Amazon S3 bucket where a zipped file containing your
Realtime scripts is stored. The storage location must specify the
Amazon S3 bucket name, the zip file name (the "key"), and a role ARN
that allows Amazon GameLift to access the Amazon S3 storage location.
The S3 bucket must be in the same region where you want to create a new
script. By default, Amazon GameLift uploads the latest version of the
zip file; if you have S3 object versioning turned on, you can use the
C<ObjectVersion> parameter to specify an earlier version.



=head2 Version => Str

Version that is associated with a build or script. Version strings do
not need to be unique. You can use UpdateScript to change this value
later.



=head2 ZipFile => Str

Data object containing your Realtime scripts and dependencies as a zip
file. The zip file can have one or multiple files. Maximum size of a
zip file is 5 MB.

When using the AWS CLI tool to create a script, this parameter is set
to the zip file name. It must be prepended with the string "fileb://"
to indicate that the file data is a binary object. For example:
C<--zip-file fileb://myRealtimeScript.zip>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateScript in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

