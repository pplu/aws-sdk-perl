
package Paws::EMR::ListStudioSessionMappings;
  use Moose;
  has IdentityType => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has StudioId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListStudioSessionMappings');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EMR::ListStudioSessionMappingsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::ListStudioSessionMappings - Arguments for method ListStudioSessionMappings on L<Paws::EMR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListStudioSessionMappings on the
L<Amazon Elastic MapReduce|Paws::EMR> service. Use the attributes of this class
as arguments to method ListStudioSessionMappings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListStudioSessionMappings.

=head1 SYNOPSIS

    my $elasticmapreduce = Paws->service('EMR');
    my $ListStudioSessionMappingsOutput =
      $elasticmapreduce->ListStudioSessionMappings(
      IdentityType => 'USER',                    # OPTIONAL
      Marker       => 'MyMarker',                # OPTIONAL
      StudioId     => 'MyXmlStringMaxLen256',    # OPTIONAL
      );

    # Results:
    my $Marker          = $ListStudioSessionMappingsOutput->Marker;
    my $SessionMappings = $ListStudioSessionMappingsOutput->SessionMappings;

    # Returns a L<Paws::EMR::ListStudioSessionMappingsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce/ListStudioSessionMappings>

=head1 ATTRIBUTES


=head2 IdentityType => Str

Specifies whether to return session mappings for users or groups. If
not specified, the results include session mapping details for both
users and groups.

Valid values are: C<"USER">, C<"GROUP">

=head2 Marker => Str

The pagination token that indicates the set of results to retrieve.



=head2 StudioId => Str

The ID of the Amazon EMR Studio.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListStudioSessionMappings in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

