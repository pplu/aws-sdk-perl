# Generated from json/callargs_class.tt

package Paws::Athena::TagResource;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Athena::Types qw/Athena_Tag/;
  has ResourceARN => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[Athena_Tag], required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'TagResource');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Athena::TagResourceOutput');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Tags' => {
                           'type' => 'ArrayRef[Athena_Tag]',
                           'class' => 'Paws::Athena::Tag'
                         },
               'ResourceARN' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'ResourceARN' => 1,
                    'Tags' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Athena::TagResource - Arguments for method TagResource on L<Paws::Athena>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TagResource on the
L<Amazon Athena|Paws::Athena> service. Use the attributes of this class
as arguments to method TagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TagResource.

=head1 SYNOPSIS

    my $athena = Paws->service('Athena');
    my $TagResourceOutput = $athena->TagResource(
      ResourceARN => 'MyAmazonResourceName',
      Tags        => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128; OPTIONAL
          Value => 'MyTagValue',    # max: 256; OPTIONAL
        },
        ...
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/athena/TagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceARN => Str

Requests that one or more tags are added to the resource (such as a
workgroup) for the specified ARN.



=head2 B<REQUIRED> Tags => ArrayRef[Athena_Tag]

One or more tags, separated by commas, to be added to the resource,
such as a workgroup.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TagResource in L<Paws::Athena>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

