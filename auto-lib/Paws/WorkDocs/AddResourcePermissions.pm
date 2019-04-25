
package Paws::WorkDocs::AddResourcePermissions;
  use Moose;
  has AuthenticationToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Authentication');
  has NotificationOptions => (is => 'ro', isa => 'Paws::WorkDocs::NotificationOptions');
  has Principals => (is => 'ro', isa => 'ArrayRef[Paws::WorkDocs::SharePrincipal]', required => 1);
  has ResourceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ResourceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddResourcePermissions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/api/v1/resources/{ResourceId}/permissions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkDocs::AddResourcePermissionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::AddResourcePermissions - Arguments for method AddResourcePermissions on L<Paws::WorkDocs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AddResourcePermissions on the
L<Amazon WorkDocs|Paws::WorkDocs> service. Use the attributes of this class
as arguments to method AddResourcePermissions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AddResourcePermissions.

=head1 SYNOPSIS

    my $workdocs = Paws->service('WorkDocs');
    my $AddResourcePermissionsResponse = $workdocs->AddResourcePermissions(
      Principals => [
        {
          Id   => 'MyIdType',    # min: 1, max: 256
          Role => 'VIEWER',      # values: VIEWER, CONTRIBUTOR, OWNER, COOWNER
          Type => 'USER', # values: USER, GROUP, INVITE, ANONYMOUS, ORGANIZATION

        },
        ...
      ],
      ResourceId          => 'MyResourceIdType',
      AuthenticationToken => 'MyAuthenticationHeaderType',    # OPTIONAL
      NotificationOptions => {
        EmailMessage => 'MyMessageType',    # max: 2048; OPTIONAL
        SendEmail    => 1,                  # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $ShareResults = $AddResourcePermissionsResponse->ShareResults;

    # Returns a L<Paws::WorkDocs::AddResourcePermissionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workdocs/AddResourcePermissions>

=head1 ATTRIBUTES


=head2 AuthenticationToken => Str

Amazon WorkDocs authentication token. Do not set this field when using
administrative API actions, as in accessing the API using AWS
credentials.



=head2 NotificationOptions => L<Paws::WorkDocs::NotificationOptions>

The notification options.



=head2 B<REQUIRED> Principals => ArrayRef[L<Paws::WorkDocs::SharePrincipal>]

The users, groups, or organization being granted permission.



=head2 B<REQUIRED> ResourceId => Str

The ID of the resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AddResourcePermissions in L<Paws::WorkDocs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

