
package Paws::WellArchitected::GetLensVersionDifference;
  use Moose;
  has BaseLensVersion => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'BaseLensVersion', required => 1);
  has LensAlias => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'LensAlias', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetLensVersionDifference');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/lenses/{LensAlias}/versionDifference');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WellArchitected::GetLensVersionDifferenceOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WellArchitected::GetLensVersionDifference - Arguments for method GetLensVersionDifference on L<Paws::WellArchitected>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetLensVersionDifference on the
L<AWS Well-Architected Tool|Paws::WellArchitected> service. Use the attributes of this class
as arguments to method GetLensVersionDifference.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetLensVersionDifference.

=head1 SYNOPSIS

    my $wellarchitected = Paws->service('WellArchitected');
    my $GetLensVersionDifferenceOutput =
      $wellarchitected->GetLensVersionDifference(
      BaseLensVersion => 'MyLensVersion',
      LensAlias       => 'MyLensAlias',

      );

    # Results:
    my $BaseLensVersion   = $GetLensVersionDifferenceOutput->BaseLensVersion;
    my $LatestLensVersion = $GetLensVersionDifferenceOutput->LatestLensVersion;
    my $LensAlias         = $GetLensVersionDifferenceOutput->LensAlias;
    my $VersionDifferences =
      $GetLensVersionDifferenceOutput->VersionDifferences;

    # Returns a L<Paws::WellArchitected::GetLensVersionDifferenceOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wellarchitected/GetLensVersionDifference>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BaseLensVersion => Str

The base version of the lens.



=head2 B<REQUIRED> LensAlias => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetLensVersionDifference in L<Paws::WellArchitected>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

