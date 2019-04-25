
package Paws::WorkMail::DescribeOrganization;
  use Moose;
  has OrganizationId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeOrganization');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkMail::DescribeOrganizationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::DescribeOrganization - Arguments for method DescribeOrganization on L<Paws::WorkMail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeOrganization on the
L<Amazon WorkMail|Paws::WorkMail> service. Use the attributes of this class
as arguments to method DescribeOrganization.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeOrganization.

=head1 SYNOPSIS

    my $workmail = Paws->service('WorkMail');
    my $DescribeOrganizationResponse = $workmail->DescribeOrganization(
      OrganizationId => 'MyOrganizationId',

    );

    # Results:
    my $Alias             = $DescribeOrganizationResponse->Alias;
    my $CompletedDate     = $DescribeOrganizationResponse->CompletedDate;
    my $DefaultMailDomain = $DescribeOrganizationResponse->DefaultMailDomain;
    my $DirectoryId       = $DescribeOrganizationResponse->DirectoryId;
    my $DirectoryType     = $DescribeOrganizationResponse->DirectoryType;
    my $ErrorMessage      = $DescribeOrganizationResponse->ErrorMessage;
    my $OrganizationId    = $DescribeOrganizationResponse->OrganizationId;
    my $State             = $DescribeOrganizationResponse->State;

    # Returns a L<Paws::WorkMail::DescribeOrganizationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workmail/DescribeOrganization>

=head1 ATTRIBUTES


=head2 B<REQUIRED> OrganizationId => Str

The identifier for the organization to be described.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeOrganization in L<Paws::WorkMail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

