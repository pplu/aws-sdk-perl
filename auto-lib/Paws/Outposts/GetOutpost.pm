
package Paws::Outposts::GetOutpost;
  use Moose;
  has OutpostId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'OutpostId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetOutpost');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/outposts/{OutpostId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Outposts::GetOutpostOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Outposts::GetOutpost - Arguments for method GetOutpost on L<Paws::Outposts>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetOutpost on the
L<AWS Outposts|Paws::Outposts> service. Use the attributes of this class
as arguments to method GetOutpost.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetOutpost.

=head1 SYNOPSIS

    my $outposts = Paws->service('Outposts');
    my $GetOutpostOutput = $outposts->GetOutpost(
      OutpostId => 'MyOutpostId',

    );

    # Results:
    my $Outpost = $GetOutpostOutput->Outpost;

    # Returns a L<Paws::Outposts::GetOutpostOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/outposts/GetOutpost>

=head1 ATTRIBUTES


=head2 B<REQUIRED> OutpostId => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetOutpost in L<Paws::Outposts>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

