<?php

namespace App\Form;

use App\Entity\User;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use App\Entity\Task;

class UsersType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('name')
            ->add('email')
            ->add('password')
            ->add('roles')
            ->add('status')
            ->add('city')
            ->add('address')
            ->add('phone')

            
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {  
        $resolver->setDefaults([
            'data_class' => User::class,
            'csrf_protection'=>false,
            
        ]);
    }
}
