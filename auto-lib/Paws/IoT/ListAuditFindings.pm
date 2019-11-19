
package Paws::IoT::ListAuditFindings;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::IoT::Types qw/IoT_ResourceIdentifier/;
  has CheckName => (is => 'ro', isa => Str, predicate => 1);
  has EndTime => (is => 'ro', isa => Str, predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);
  has ResourceIdentifier => (is => 'ro', isa => IoT_ResourceIdentifier, predicate => 1);
  has StartTime => (is => 'ro', isa => Str, predicate => 1);
  has TaskId => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListAuditFindings');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/audit/findings');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::IoT::ListAuditFindingsResponse');

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'CheckName' => 'checkName',
                       'NextToken' => 'nextToken',
                       'MaxResults' => 'maxResults',
                       'TaskId' => 'taskId',
                       'StartTime' => 'startTime',
                       'EndTime' => 'endTime',
                       'ResourceIdentifier' => 'resourceIdentifier'
                     },
  'types' => {
               'ResourceIdentifier' => {
                                         'class' => 'Paws::IoT::ResourceIdentifier',
                                         'type' => 'IoT_ResourceIdentifier'
                                       },
               'EndTime' => {
                              'type' => 'Str'
                            },
               'StartTime' => {
                                'type' => 'Str'
                              },
               'TaskId' => {
                             'type' => 'Str'
                           },
               'MaxResults' => {
                                 'type' => 'Int'
                               },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'CheckName' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListAuditFindings - Arguments for method ListAuditFindings on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAuditFindings on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method ListAuditFindings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAuditFindings.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $ListAuditFindingsResponse = $iot->ListAuditFindings(
      CheckName          => 'MyAuditCheckName',       # OPTIONAL
      EndTime            => '1970-01-01T01:00:00',    # OPTIONAL
      MaxResults         => 1,                        # OPTIONAL
      NextToken          => 'MyNextToken',            # OPTIONAL
      ResourceIdentifier => {
        Account         => 'MyAwsAccountId',     # min: 12, max: 12; OPTIONAL
        CaCertificateId => 'MyCertificateId',    # min: 64, max: 64; OPTIONAL
        ClientId        => 'MyClientId',         # OPTIONAL
        CognitoIdentityPoolId => 'MyCognitoIdentityPoolId',    # OPTIONAL
        DeviceCertificateId => 'MyCertificateId',   # min: 64, max: 64; OPTIONAL
        PolicyVersionIdentifier => {
          PolicyName      => 'MyPolicyName',        # min: 1, max: 128; OPTIONAL
          PolicyVersionId => 'MyPolicyVersionId',   # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      StartTime => '1970-01-01T01:00:00',    # OPTIONAL
      TaskId    => 'MyAuditTaskId',          # OPTIONAL
    );

    # Results:
    my $Findings  = $ListAuditFindingsResponse->Findings;
    my $NextToken = $ListAuditFindingsResponse->NextToken;

    # Returns a L<Paws::IoT::ListAuditFindingsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/ListAuditFindings>

=head1 ATTRIBUTES


=head2 CheckName => Str

A filter to limit results to the findings for the specified audit
check.



=head2 EndTime => Str

A filter to limit results to those found before the specified time. You
must specify either the startTime and endTime or the taskId, but not
both.



=head2 MaxResults => Int

The maximum number of results to return at one time. The default is 25.



=head2 NextToken => Str

The token for the next set of results.



=head2 ResourceIdentifier => IoT_ResourceIdentifier

Information identifying the noncompliant resource.



=head2 StartTime => Str

A filter to limit results to those found after the specified time. You
must specify either the startTime and endTime or the taskId, but not
both.



=head2 TaskId => Str

A filter to limit results to the audit with the specified ID. You must
specify either the taskId or the startTime and endTime, but not both.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAuditFindings in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

