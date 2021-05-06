
package Paws::RAM::ListPermissions;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has ResourceType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceType');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListPermissions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/listpermissions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RAM::ListPermissionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RAM::ListPermissions - Arguments for method ListPermissions on L<Paws::RAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListPermissions on the
L<AWS Resource Access Manager|Paws::RAM> service. Use the attributes of this class
as arguments to method ListPermissions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListPermissions.

=head1 SYNOPSIS

    my $ram = Paws->service('RAM');
    my $ListPermissionsResponse = $ram->ListPermissions(
      MaxResults   => 1,             # OPTIONAL
      NextToken    => 'MyString',    # OPTIONAL
      ResourceType => 'MyString',    # OPTIONAL
    );

    # Results:
    my $NextToken   = $ListPermissionsResponse->NextToken;
    my $Permissions = $ListPermissionsResponse->Permissions;

    # Returns a L<Paws::RAM::ListPermissionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ram/ListPermissions>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return with a single call. To retrieve
the remaining results, make another call with the returned C<nextToken>
value.



=head2 NextToken => Str

The token for the next page of results.



=head2 ResourceType => Str

Specifies the resource type for which to list permissions. For example,
to list only permissions that apply to EC2 subnets, specify
C<ec2:Subnet>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListPermissions in L<Paws::RAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

