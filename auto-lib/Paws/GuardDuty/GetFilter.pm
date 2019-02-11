
package Paws::GuardDuty::GetFilter;
  use Moose;
  has DetectorId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'detectorId', required => 1);
  has FilterName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'filterName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetFilter');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/detector/{detectorId}/filter/{filterName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GuardDuty::GetFilterResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::GetFilter - Arguments for method GetFilter on L<Paws::GuardDuty>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetFilter on the
L<Amazon GuardDuty|Paws::GuardDuty> service. Use the attributes of this class
as arguments to method GetFilter.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetFilter.

=head1 SYNOPSIS

    my $guardduty = Paws->service('GuardDuty');
    my $GetFilterResponse = $guardduty->GetFilter(
      DetectorId => 'My__string',
      FilterName => 'My__string',

    );

    # Results:
    my $Action          = $GetFilterResponse->Action;
    my $Description     = $GetFilterResponse->Description;
    my $FindingCriteria = $GetFilterResponse->FindingCriteria;
    my $Name            = $GetFilterResponse->Name;
    my $Rank            = $GetFilterResponse->Rank;

    # Returns a L<Paws::GuardDuty::GetFilterResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/guardduty/GetFilter>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DetectorId => Str

The detector ID that specifies the GuardDuty service where you want to
list the details of the specified filter.



=head2 B<REQUIRED> FilterName => Str

The name of the filter whose details you want to get.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetFilter in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

