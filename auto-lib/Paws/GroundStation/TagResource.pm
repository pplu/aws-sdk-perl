
package Paws::GroundStation::TagResource;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::GroundStation::Types qw/GroundStation_TagsMap/;
  has ResourceArn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Tags => (is => 'ro', isa => GroundStation_TagsMap, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'TagResource');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/tags/{resourceArn}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::GroundStation::TagResourceResponse');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'ResourceArn' => 1
                  },
  'NameInRequest' => {
                       'Tags' => 'tags'
                     },
  'types' => {
               'ResourceArn' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'type' => 'GroundStation_TagsMap',
                           'class' => 'Paws::GroundStation::TagsMap'
                         }
             },
  'ParamInURI' => {
                    'ResourceArn' => 'resourceArn'
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::TagResource - Arguments for method TagResource on L<Paws::GroundStation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TagResource on the
L<AWS Ground Station|Paws::GroundStation> service. Use the attributes of this class
as arguments to method TagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TagResource.

=head1 SYNOPSIS

    my $groundstation = Paws->service('GroundStation');
    my $TagResourceResponse = $groundstation->TagResource(
      ResourceArn => 'MyString',
      Tags        => { 'MyString' => 'MyString', },    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/groundstation/TagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

ARN of a resource tag.



=head2 Tags => GroundStation_TagsMap

Tags assigned to a resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TagResource in L<Paws::GroundStation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

