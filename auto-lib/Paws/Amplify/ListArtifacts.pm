
package Paws::Amplify::ListArtifacts;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::Amplify::Types qw//;
  has AppId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has BranchName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has JobId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListArtifacts');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/apps/{appId}/branches/{branchName}/jobs/{jobId}/artifacts');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Amplify::ListArtifactsResult');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'MaxResults' => {
                                 'type' => 'Int'
                               },
               'JobId' => {
                            'type' => 'Str'
                          },
               'AppId' => {
                            'type' => 'Str'
                          },
               'BranchName' => {
                                 'type' => 'Str'
                               }
             },
  'IsRequired' => {
                    'BranchName' => 1,
                    'AppId' => 1,
                    'JobId' => 1
                  },
  'ParamInQuery' => {
                      'MaxResults' => 'maxResults',
                      'NextToken' => 'nextToken'
                    },
  'ParamInURI' => {
                    'BranchName' => 'branchName',
                    'JobId' => 'jobId',
                    'AppId' => 'appId'
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Amplify::ListArtifacts - Arguments for method ListArtifacts on L<Paws::Amplify>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListArtifacts on the
L<AWS Amplify|Paws::Amplify> service. Use the attributes of this class
as arguments to method ListArtifacts.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListArtifacts.

=head1 SYNOPSIS

    my $amplify = Paws->service('Amplify');
    my $ListArtifactsResult = $amplify->ListArtifacts(
      AppId      => 'MyAppId',
      BranchName => 'MyBranchName',
      JobId      => 'MyJobId',
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $Artifacts = $ListArtifactsResult->Artifacts;
    my $NextToken = $ListArtifactsResult->NextToken;

    # Returns a L<Paws::Amplify::ListArtifactsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/amplify/ListArtifacts>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppId => Str

Unique Id for an Amplify App.



=head2 B<REQUIRED> BranchName => Str

Name for a branch, part of an Amplify App.



=head2 B<REQUIRED> JobId => Str

Unique Id for an Job.



=head2 MaxResults => Int

Maximum number of records to list in a single response.



=head2 NextToken => Str

Pagination token. Set to null to start listing artifacts from start. If
non-null pagination token is returned in a result, then pass its value
in here to list more artifacts.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListArtifacts in L<Paws::Amplify>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

