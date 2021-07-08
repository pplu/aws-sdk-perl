
package Paws::MediaTailor::DeleteVodSource;
  use Moose;
  has SourceLocationName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'sourceLocationName', required => 1);
  has VodSourceName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'vodSourceName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteVodSource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/sourceLocation/{sourceLocationName}/vodSource/{vodSourceName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaTailor::DeleteVodSourceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaTailor::DeleteVodSource - Arguments for method DeleteVodSource on L<Paws::MediaTailor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteVodSource on the
L<AWS MediaTailor|Paws::MediaTailor> service. Use the attributes of this class
as arguments to method DeleteVodSource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteVodSource.

=head1 SYNOPSIS

    my $api.mediatailor = Paws->service('MediaTailor');
    my $DeleteVodSourceResponse = $api . mediatailor->DeleteVodSource(
      SourceLocationName => 'My__string',
      VodSourceName      => 'My__string',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.mediatailor/DeleteVodSource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SourceLocationName => Str

The identifier for the source location you are working on.



=head2 B<REQUIRED> VodSourceName => Str

The identifier for the VOD source you are working on.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteVodSource in L<Paws::MediaTailor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

