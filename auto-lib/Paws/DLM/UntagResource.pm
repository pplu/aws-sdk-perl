
package Paws::DLM::UntagResource;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::DLM::Types qw//;
  has ResourceArn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has TagKeys => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UntagResource');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/tags/{resourceArn}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'DELETE');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::DLM::UntagResourceResponse');

    sub params_map {
    our $Params_map ||= {
  'ParamInURI' => {
                    'ResourceArn' => 'resourceArn'
                  },
  'types' => {
               'ResourceArn' => {
                                  'type' => 'Str'
                                },
               'TagKeys' => {
                              'type' => 'ArrayRef[Str|Undef]'
                            }
             },
  'IsRequired' => {
                    'ResourceArn' => 1,
                    'TagKeys' => 1
                  },
  'ParamInQuery' => {
                      'TagKeys' => 'tagKeys'
                    }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::DLM::UntagResource - Arguments for method UntagResource on L<Paws::DLM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UntagResource on the
L<Amazon Data Lifecycle Manager|Paws::DLM> service. Use the attributes of this class
as arguments to method UntagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UntagResource.

=head1 SYNOPSIS

    my $dlm = Paws->service('DLM');
    my $UntagResourceResponse = $dlm->UntagResource(
      ResourceArn => 'MyPolicyArn',
      TagKeys     => [
        'MyTagKey', ...    # min: 1, max: 128
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dlm/UntagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the resource.



=head2 B<REQUIRED> TagKeys => ArrayRef[Str|Undef]

The tag keys.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UntagResource in L<Paws::DLM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

