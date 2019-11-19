# Generated from json/callargs_class.tt

package Paws::Lightsail::TagResource;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Lightsail::Types qw/Lightsail_Tag/;
  has ResourceArn => (is => 'ro', isa => Str, predicate => 1);
  has ResourceName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[Lightsail_Tag], required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'TagResource');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Lightsail::TagResourceResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ResourceArn' => {
                                  'type' => 'Str'
                                },
               'ResourceName' => {
                                   'type' => 'Str'
                                 },
               'Tags' => {
                           'type' => 'ArrayRef[Lightsail_Tag]',
                           'class' => 'Paws::Lightsail::Tag'
                         }
             },
  'NameInRequest' => {
                       'Tags' => 'tags',
                       'ResourceArn' => 'resourceArn',
                       'ResourceName' => 'resourceName'
                     },
  'IsRequired' => {
                    'ResourceName' => 1,
                    'Tags' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::TagResource - Arguments for method TagResource on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TagResource on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method TagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TagResource.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $TagResourceResult = $lightsail->TagResource(
      ResourceName => 'MyResourceName',
      Tags         => [
        {
          Key   => 'MyTagKey',      # OPTIONAL
          Value => 'MyTagValue',    # OPTIONAL
        },
        ...
      ],
      ResourceArn => 'MyResourceArn',    # OPTIONAL
    );

    # Results:
    my $Operations = $TagResourceResult->Operations;

    # Returns a L<Paws::Lightsail::TagResourceResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/TagResource>

=head1 ATTRIBUTES


=head2 ResourceArn => Str

The Amazon Resource Name (ARN) of the resource to which you want to add
a tag.



=head2 B<REQUIRED> ResourceName => Str

The name of the resource to which you are adding tags.



=head2 B<REQUIRED> Tags => ArrayRef[Lightsail_Tag]

The tag key and optional value.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TagResource in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

