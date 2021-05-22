
package Paws::Outposts::CreateOutpost;
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has AvailabilityZoneId => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has SiteId => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Outposts::TagMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateOutpost');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/outposts');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Outposts::CreateOutpostOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Outposts::CreateOutpost - Arguments for method CreateOutpost on L<Paws::Outposts>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateOutpost on the
L<AWS Outposts|Paws::Outposts> service. Use the attributes of this class
as arguments to method CreateOutpost.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateOutpost.

=head1 SYNOPSIS

    my $outposts = Paws->service('Outposts');
    my $CreateOutpostOutput = $outposts->CreateOutpost(
      Name               => 'MyOutpostName',
      SiteId             => 'MySiteId',
      AvailabilityZone   => 'MyAvailabilityZone',      # OPTIONAL
      AvailabilityZoneId => 'MyAvailabilityZoneId',    # OPTIONAL
      Description        => 'MyOutpostDescription',    # OPTIONAL
      Tags               => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Outpost = $CreateOutpostOutput->Outpost;

    # Returns a L<Paws::Outposts::CreateOutpostOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/outposts/CreateOutpost>

=head1 ATTRIBUTES


=head2 AvailabilityZone => Str





=head2 AvailabilityZoneId => Str





=head2 Description => Str





=head2 B<REQUIRED> Name => Str





=head2 B<REQUIRED> SiteId => Str





=head2 Tags => L<Paws::Outposts::TagMap>

The tags to apply to the Outpost.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateOutpost in L<Paws::Outposts>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

