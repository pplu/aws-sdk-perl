
package Paws::MediaTailor::DeleteSourceLocation;
  use Moose;
  has SourceLocationName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'sourceLocationName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteSourceLocation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/sourceLocation/{sourceLocationName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaTailor::DeleteSourceLocationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaTailor::DeleteSourceLocation - Arguments for method DeleteSourceLocation on L<Paws::MediaTailor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteSourceLocation on the
L<AWS MediaTailor|Paws::MediaTailor> service. Use the attributes of this class
as arguments to method DeleteSourceLocation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteSourceLocation.

=head1 SYNOPSIS

    my $api.mediatailor = Paws->service('MediaTailor');
    my $DeleteSourceLocationResponse = $api . mediatailor->DeleteSourceLocation(
      SourceLocationName => 'My__string',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.mediatailor/DeleteSourceLocation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SourceLocationName => Str

The identifier for the source location you are working on.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteSourceLocation in L<Paws::MediaTailor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

