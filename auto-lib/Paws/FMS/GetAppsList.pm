
package Paws::FMS::GetAppsList;
  use Moose;
  has DefaultList => (is => 'ro', isa => 'Bool');
  has ListId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAppsList');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FMS::GetAppsListResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FMS::GetAppsList - Arguments for method GetAppsList on L<Paws::FMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAppsList on the
L<Firewall Management Service|Paws::FMS> service. Use the attributes of this class
as arguments to method GetAppsList.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAppsList.

=head1 SYNOPSIS

    my $fms = Paws->service('FMS');
    my $GetAppsListResponse = $fms->GetAppsList(
      ListId      => 'MyListId',
      DefaultList => 1,            # OPTIONAL
    );

    # Results:
    my $AppsList    = $GetAppsListResponse->AppsList;
    my $AppsListArn = $GetAppsListResponse->AppsListArn;

    # Returns a L<Paws::FMS::GetAppsListResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/fms/GetAppsList>

=head1 ATTRIBUTES


=head2 DefaultList => Bool

Specifies whether the list to retrieve is a default list owned by AWS
Firewall Manager.



=head2 B<REQUIRED> ListId => Str

The ID of the AWS Firewall Manager applications list that you want the
details for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAppsList in L<Paws::FMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

