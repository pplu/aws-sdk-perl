
package Paws::Amplify::CreateDeployment;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Amplify::Types qw/Amplify_FileMap/;
  has AppId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has BranchName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has FileMap => (is => 'ro', isa => Amplify_FileMap, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateDeployment');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/apps/{appId}/branches/{branchName}/deployments');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Amplify::CreateDeploymentResult');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'BranchName' => {
                                 'type' => 'Str'
                               },
               'FileMap' => {
                              'class' => 'Paws::Amplify::FileMap',
                              'type' => 'Amplify_FileMap'
                            },
               'AppId' => {
                            'type' => 'Str'
                          }
             },
  'ParamInURI' => {
                    'BranchName' => 'branchName',
                    'AppId' => 'appId'
                  },
  'NameInRequest' => {
                       'FileMap' => 'fileMap'
                     },
  'IsRequired' => {
                    'BranchName' => 1,
                    'AppId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Amplify::CreateDeployment - Arguments for method CreateDeployment on L<Paws::Amplify>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDeployment on the
L<AWS Amplify|Paws::Amplify> service. Use the attributes of this class
as arguments to method CreateDeployment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDeployment.

=head1 SYNOPSIS

    my $amplify = Paws->service('Amplify');
    my $CreateDeploymentResult = $amplify->CreateDeployment(
      AppId      => 'MyAppId',
      BranchName => 'MyBranchName',
      FileMap    => {
        'MyFileName' => 'MyMD5Hash',    # key: max: 255, value: max: 32
      },    # OPTIONAL
    );

    # Results:
    my $FileUploadUrls = $CreateDeploymentResult->FileUploadUrls;
    my $JobId          = $CreateDeploymentResult->JobId;
    my $ZipUploadUrl   = $CreateDeploymentResult->ZipUploadUrl;

    # Returns a L<Paws::Amplify::CreateDeploymentResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/amplify/CreateDeployment>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppId => Str

Unique Id for an Amplify App.



=head2 B<REQUIRED> BranchName => Str

Name for the branch, for the Job.



=head2 FileMap => Amplify_FileMap

Optional file map that contains file name as the key and file content
md5 hash as the value. If this argument is provided, the service will
generate different upload url per file. Otherwise, the service will
only generate a single upload url for the zipped files.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDeployment in L<Paws::Amplify>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

