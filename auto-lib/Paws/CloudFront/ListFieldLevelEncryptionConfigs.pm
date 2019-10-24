
package Paws::CloudFront::ListFieldLevelEncryptionConfigs;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudFront::Types qw//;
  has Marker => (is => 'ro', isa => Str, predicate => 1);
  has MaxItems => (is => 'ro', isa => Str, predicate => 1);

use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListFieldLevelEncryptionConfigs');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/2019-03-26/field-level-encryption');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CloudFront::ListFieldLevelEncryptionConfigsResult');
  class_has _result_key => (isa => Str, is => 'ro');
  
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'MaxItems' => {
                               'type' => 'Str'
                             },
               'Marker' => {
                             'type' => 'Str'
                           }
             },
  'ParamInQuery' => {
                      'MaxItems' => 'MaxItems',
                      'Marker' => 'Marker'
                    }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::ListFieldLevelEncryptionConfigs - Arguments for method ListFieldLevelEncryptionConfigs on L<Paws::CloudFront>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListFieldLevelEncryptionConfigs2019_03_26 on the
L<Amazon CloudFront|Paws::CloudFront> service. Use the attributes of this class
as arguments to method ListFieldLevelEncryptionConfigs2019_03_26.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListFieldLevelEncryptionConfigs2019_03_26.

=head1 SYNOPSIS

    my $cloudfront = Paws->service('CloudFront');
    my $ListFieldLevelEncryptionConfigsResult =
      $cloudfront->ListFieldLevelEncryptionConfigs(
      Marker   => 'Mystring',    # OPTIONAL
      MaxItems => 'Mystring',    # OPTIONAL
      );

    # Results:
    my $FieldLevelEncryptionList =
      $ListFieldLevelEncryptionConfigsResult->FieldLevelEncryptionList;

  # Returns a L<Paws::CloudFront::ListFieldLevelEncryptionConfigsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudfront/ListFieldLevelEncryptionConfigs>

=head1 ATTRIBUTES


=head2 Marker => Str

Use this when paginating results to indicate where to begin in your
list of configurations. The results include configurations in the list
that occur after the marker. To get the next page of results, set the
C<Marker> to the value of the C<NextMarker> from the current page's
response (which is also the ID of the last configuration on that page).



=head2 MaxItems => Str

The maximum number of field-level encryption configurations you want in
the response body.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListFieldLevelEncryptionConfigs2019_03_26 in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

