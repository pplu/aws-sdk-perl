# Generated from json/callargs_class.tt

package Paws::Glue::DeleteMLTransform;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Glue::Types qw//;
  has TransformId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DeleteMLTransform');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Glue::DeleteMLTransformResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'TransformId' => 1
                  },
  'types' => {
               'TransformId' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::DeleteMLTransform - Arguments for method DeleteMLTransform on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteMLTransform on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method DeleteMLTransform.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteMLTransform.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $DeleteMLTransformResponse = $glue->DeleteMLTransform(
      TransformId => 'MyHashString',

    );

    # Results:
    my $TransformId = $DeleteMLTransformResponse->TransformId;

    # Returns a L<Paws::Glue::DeleteMLTransformResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/DeleteMLTransform>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TransformId => Str

The unique identifier of the transform to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteMLTransform in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

