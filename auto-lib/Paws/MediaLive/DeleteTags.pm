
package Paws::MediaLive::DeleteTags;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::MediaLive::Types qw//;
  has ResourceArn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has TagKeys => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DeleteTags');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/prod/tags/{resource-arn}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'DELETE');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');

    sub params_map {
    our $Params_map ||= {
  'ParamInURI' => {
                    'ResourceArn' => 'resource-arn'
                  },
  'ParamInQuery' => {
                      'TagKeys' => 'tagKeys'
                    },
  'IsRequired' => {
                    'TagKeys' => 1,
                    'ResourceArn' => 1
                  },
  'types' => {
               'ResourceArn' => {
                                  'type' => 'Str'
                                },
               'TagKeys' => {
                              'type' => 'ArrayRef[Str|Undef]'
                            }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::DeleteTags - Arguments for method DeleteTags on L<Paws::MediaLive>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteTags on the
L<AWS Elemental MediaLive|Paws::MediaLive> service. Use the attributes of this class
as arguments to method DeleteTags.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteTags.

=head1 SYNOPSIS

    my $medialive = Paws->service('MediaLive');
    $medialive->DeleteTags(
      ResourceArn => 'My__string',
      TagKeys     => [ 'My__string', ... ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/medialive/DeleteTags>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str





=head2 B<REQUIRED> TagKeys => ArrayRef[Str|Undef]

An array of tag keys to delete




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteTags in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

