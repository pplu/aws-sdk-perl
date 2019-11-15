
package Paws::FMS::GetProtectionStatus;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has MemberAccountId => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has PolicyId => (is => 'ro', isa => 'Str', required => 1);
  has StartTime => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetProtectionStatus');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FMS::GetProtectionStatusResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FMS::GetProtectionStatus - Arguments for method GetProtectionStatus on L<Paws::FMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetProtectionStatus on the
L<Firewall Management Service|Paws::FMS> service. Use the attributes of this class
as arguments to method GetProtectionStatus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetProtectionStatus.

=head1 SYNOPSIS

    my $fms = Paws->service('FMS');
    my $GetProtectionStatusResponse = $fms->GetProtectionStatus(
      PolicyId        => 'MyPolicyId',
      EndTime         => '1970-01-01T01:00:00',    # OPTIONAL
      MaxResults      => 1,                        # OPTIONAL
      MemberAccountId => 'MyAWSAccountId',         # OPTIONAL
      NextToken       => 'MyPaginationToken',      # OPTIONAL
      StartTime       => '1970-01-01T01:00:00',    # OPTIONAL
    );

    # Results:
    my $AdminAccountId = $GetProtectionStatusResponse->AdminAccountId;
    my $Data           = $GetProtectionStatusResponse->Data;
    my $NextToken      = $GetProtectionStatusResponse->NextToken;
    my $ServiceType    = $GetProtectionStatusResponse->ServiceType;

    # Returns a L<Paws::FMS::GetProtectionStatusResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/fms/GetProtectionStatus>

=head1 ATTRIBUTES


=head2 EndTime => Str

The end of the time period to query for the attacks. This is a
C<timestamp> type. The request syntax listing indicates a C<number>
type because the default used by AWS Firewall Manager is Unix time in
seconds. However, any valid C<timestamp> format is allowed.



=head2 MaxResults => Int

Specifies the number of objects that you want AWS Firewall Manager to
return for this request. If you have more objects than the number that
you specify for C<MaxResults>, the response includes a C<NextToken>
value that you can use to get another batch of objects.



=head2 MemberAccountId => Str

The AWS account that is in scope of the policy that you want to get the
details for.



=head2 NextToken => Str

If you specify a value for C<MaxResults> and you have more objects than
the number that you specify for C<MaxResults>, AWS Firewall Manager
returns a C<NextToken> value in the response, which you can use to
retrieve another group of objects. For the second and subsequent
C<GetProtectionStatus> requests, specify the value of C<NextToken> from
the previous response to get information about another batch of
objects.



=head2 B<REQUIRED> PolicyId => Str

The ID of the policy for which you want to get the attack information.



=head2 StartTime => Str

The start of the time period to query for the attacks. This is a
C<timestamp> type. The request syntax listing indicates a C<number>
type because the default used by AWS Firewall Manager is Unix time in
seconds. However, any valid C<timestamp> format is allowed.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetProtectionStatus in L<Paws::FMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

