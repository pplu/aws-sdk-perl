
package Paws::SavingsPlans::UntagResource;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::SavingsPlans::Types qw//;
  has ResourceArn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has TagKeys => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UntagResource');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/UntagResource');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::SavingsPlans::UntagResourceResponse');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'TagKeys' => 1,
                    'ResourceArn' => 1
                  },
  'NameInRequest' => {
                       'TagKeys' => 'tagKeys',
                       'ResourceArn' => 'resourceArn'
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

Paws::SavingsPlans::UntagResource - Arguments for method UntagResource on L<Paws::SavingsPlans>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UntagResource on the
L<AWS Savings Plans|Paws::SavingsPlans> service. Use the attributes of this class
as arguments to method UntagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UntagResource.

=head1 SYNOPSIS

    my $savingsplans = Paws->service('SavingsPlans');
    my $UntagResourceResponse = $savingsplans->UntagResource(
      ResourceArn => 'MySavingsPlanArn',
      TagKeys     => [ 'MyTagKey', ... ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/savingsplans/UntagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the resource.



=head2 B<REQUIRED> TagKeys => ArrayRef[Str|Undef]

The tag keys.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UntagResource in L<Paws::SavingsPlans>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

