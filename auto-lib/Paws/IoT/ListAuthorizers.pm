
package Paws::IoT::ListAuthorizers;
  use Moo;
  use Types::Standard qw/Str Bool Int/;
  use Paws::IoT::Types qw//;
  has AscendingOrder => (is => 'ro', isa => Bool, predicate => 1);
  has Marker => (is => 'ro', isa => Str, predicate => 1);
  has PageSize => (is => 'ro', isa => Int, predicate => 1);
  has Status => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListAuthorizers');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/authorizers/');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::IoT::ListAuthorizersResponse');

    sub params_map {
    our $Params_map ||= {
  'ParamInQuery' => {
                      'AscendingOrder' => 'isAscendingOrder',
                      'Status' => 'status',
                      'PageSize' => 'pageSize',
                      'Marker' => 'marker'
                    },
  'types' => {
               'Marker' => {
                             'type' => 'Str'
                           },
               'PageSize' => {
                               'type' => 'Int'
                             },
               'Status' => {
                             'type' => 'Str'
                           },
               'AscendingOrder' => {
                                     'type' => 'Bool'
                                   }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListAuthorizers - Arguments for method ListAuthorizers on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAuthorizers on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method ListAuthorizers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAuthorizers.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $ListAuthorizersResponse = $iot->ListAuthorizers(
      AscendingOrder => 1,             # OPTIONAL
      Marker         => 'MyMarker',    # OPTIONAL
      PageSize       => 1,             # OPTIONAL
      Status         => 'ACTIVE',      # OPTIONAL
    );

    # Results:
    my $Authorizers = $ListAuthorizersResponse->Authorizers;
    my $NextMarker  = $ListAuthorizersResponse->NextMarker;

    # Returns a L<Paws::IoT::ListAuthorizersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/ListAuthorizers>

=head1 ATTRIBUTES


=head2 AscendingOrder => Bool

Return the list of authorizers in ascending alphabetical order.



=head2 Marker => Str

A marker used to get the next set of results.



=head2 PageSize => Int

The maximum number of results to return at one time.



=head2 Status => Str

The status of the list authorizers request.

Valid values are: C<"ACTIVE">, C<"INACTIVE">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAuthorizers in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

