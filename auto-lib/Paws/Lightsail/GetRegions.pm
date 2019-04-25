
package Paws::Lightsail::GetRegions;
  use Moose;
  has IncludeAvailabilityZones => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'includeAvailabilityZones' );
  has IncludeRelationalDatabaseAvailabilityZones => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'includeRelationalDatabaseAvailabilityZones' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetRegions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::GetRegionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetRegions - Arguments for method GetRegions on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetRegions on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method GetRegions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetRegions.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $GetRegionsResult = $lightsail->GetRegions(
      IncludeAvailabilityZones                   => 1,    # OPTIONAL
      IncludeRelationalDatabaseAvailabilityZones => 1,    # OPTIONAL
    );

    # Results:
    my $Regions = $GetRegionsResult->Regions;

    # Returns a L<Paws::Lightsail::GetRegionsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/GetRegions>

=head1 ATTRIBUTES


=head2 IncludeAvailabilityZones => Bool

A Boolean value indicating whether to also include Availability Zones
in your get regions request. Availability Zones are indicated with a
letter: e.g., C<us-east-2a>.



=head2 IncludeRelationalDatabaseAvailabilityZones => Bool

E<gt>A Boolean value indicating whether to also include Availability
Zones for databases in your get regions request. Availability Zones are
indicated with a letter (e.g., C<us-east-2a>).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetRegions in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

