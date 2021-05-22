
package Paws::MediaPackageVod::ConfigureLogs;
  use Moose;
  has EgressAccessLogs => (is => 'ro', isa => 'Paws::MediaPackageVod::EgressAccessLogs', traits => ['NameInRequest'], request_name => 'egressAccessLogs');
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ConfigureLogs');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/packaging_groups/{id}/configure_logs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaPackageVod::ConfigureLogsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackageVod::ConfigureLogs - Arguments for method ConfigureLogs on L<Paws::MediaPackageVod>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ConfigureLogs on the
L<AWS Elemental MediaPackage VOD|Paws::MediaPackageVod> service. Use the attributes of this class
as arguments to method ConfigureLogs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ConfigureLogs.

=head1 SYNOPSIS

    my $mediapackage-vod = Paws->service('MediaPackageVod');
    my $ConfigureLogsResponse = $mediapackage -vod->ConfigureLogs(
      Id               => 'My__string',
      EgressAccessLogs => { LogGroupName => 'My__string', },    # OPTIONAL
    );

    # Results:
    my $Arn              = $ConfigureLogsResponse->Arn;
    my $Authorization    = $ConfigureLogsResponse->Authorization;
    my $DomainName       = $ConfigureLogsResponse->DomainName;
    my $EgressAccessLogs = $ConfigureLogsResponse->EgressAccessLogs;
    my $Id               = $ConfigureLogsResponse->Id;
    my $Tags             = $ConfigureLogsResponse->Tags;

    # Returns a L<Paws::MediaPackageVod::ConfigureLogsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediapackage-vod/ConfigureLogs>

=head1 ATTRIBUTES


=head2 EgressAccessLogs => L<Paws::MediaPackageVod::EgressAccessLogs>





=head2 B<REQUIRED> Id => Str

The ID of a MediaPackage VOD PackagingGroup resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ConfigureLogs in L<Paws::MediaPackageVod>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

